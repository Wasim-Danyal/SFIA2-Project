from flask import render_template, redirect, url_for, request
from application import app, db
import requests
from application.models import Destination
from sqlalchemy import desc, func

@app.route('/')
@app.route('/home')
def home():
	return render_template('home.html', title='Home')

@app.route('/generate', methods=['GET','POST'])
def generate():
	country = requests.get('http://service2:5001/country')
	city = requests.post('http://service3:5002/city', data=country.text)
	food = requests.post('http://service4:5003/food', data=city.text)

	db_info = Destination(country=country.text, city=city.text, food=food.text)
	db.session.add(db_info)
	db.session.commit()
	recents=Destination.query.order_by(id.desc)
	
	return render_template('generate.html', countryname = country.text, cityname = city.text, food = food.text, display = recents)
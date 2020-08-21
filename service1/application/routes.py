from flask import render_template, redirect, url_for, request
from application import app
import requests

@app.route('/')
@app.route('/home')
def home():
	return render_template('home.html', title='Home')

@app.route('/generate', methods=['GET','POST'])
def generate():
	country = requests.get('http://34.105.137.219:5001/country')
	city = requests.get('http://34.105.137.219:5002/city', data=country.text)
	travel = requests.get('http://34.105.137.219:5003/travel', data1=city.text, data2=country.text)
	return render_template('generate.html', countryname = country.text, cityname = city.text, travel = travel.text)
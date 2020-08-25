from flask import render_template, redirect, url_for, request
from application import app
import requests

@app.route('/')
@app.route('/home')
def home():
	return render_template('home.html', title='Home')

@app.route('/generate', methods=['GET','POST'])
def generate():
	country = requests.get('http://34.89.67.218:5001/country')
	city = requests.post('http://34.89.67.218:5002/city', data=country.text)
	food = requests.post('http://34.89.67.218:5003/food', data=city.text)
	return render_template('generate.html', countryname = country.text, cityname = city.text, food = food.text)
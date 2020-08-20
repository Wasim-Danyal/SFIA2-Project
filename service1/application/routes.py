from flask import render_template, redirect, url_for, request
from application import app
import requests

@app.route('/')
@app.route('/home')
def home():
	return render_template('home.html', title='Home')

@app.route('/generate', methods=['GET','POST'])
def generate():
	country = requests.get('http://35.246.2.9:5001/country')
	city = requests.get('http://35.246.2.9:5002/city', data=country.text)
	return render_template('generate.html', countryname = country.text, cityname = city.text)
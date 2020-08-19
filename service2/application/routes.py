from flask import render_template, redirect, url_for, Response, request
from application import app
import requests 
import random

@app.route('/')
@app.route('/country', methods=['GET'])
def countrynames():
	countryname = [
		'Canada',
		'Russia',
		'USA',
		'Czech Republic',
		'France'
		]
	countrychosen = countryname[random.randrange(5)]
	return Response(countrychosen,mimetype='text/plain')

@app.route('/city', methods=['GET','POST'])
def citynames():
	cityname={
		"Canada": "Toronto",
		"Russia" : "Moscow",
		"USA" : "California",
		"Czech Republic" : "Prague",
		"France" : "Paris"
	}

	data_sent = request.data.decode('utf-8')
	citychosen = cityname[data_sent]
	return Response(citychosen, mimetype='text/plain') 
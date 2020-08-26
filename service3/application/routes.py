from flask import render_template, redirect, url_for, Response, request
from application import app
import requests 
import random

@app.route('/')
@app.route('/city', methods=['GET', 'POST'])
def citynames():
	cityname={
		"Canada": "Toronto",
		"Russia" : "Moscow",
		"USA" : "California",
		"Czech Republic" : "Prague",
		"France" : "Paris"
	}

	data = request.data.decode('utf-8')
	citychosen = cityname[data]
	return Response(citychosen, mimetype='text/plain') 
from flask import render_template, redirect, url_for, Response, request
from application import app
import requests 

#replication of service3 to ensure routes working before i implement logic

def decider(countrycity):
    c = countrycity
    return c 

@app.route('/')
@app.route('/food', methods=['GET', 'POST'])
def travelchoice():

    countrycity = request.data.decode('utf-8')
    foodchoice = decider(countrycity)
    return Response(foodchoice, mimetype='text/plain')
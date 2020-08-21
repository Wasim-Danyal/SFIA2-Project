from flask import render_template, redirect, url_for, Response, request
from application import app
import requests 
import random



def decider(data14):
    data1_sent = request.data1.decode('utf-8')
    data2_sent = request.data2.decode('utf-8')







@app.route('/')
@app.route('/travel', methods=['GET'])
def travelchoice():
    x = decider(data1)
    y = decider(data2)
    
    return x, y
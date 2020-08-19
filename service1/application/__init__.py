from flask import Flask

from os import getenv

app = Flask(__name__)


from application import routes
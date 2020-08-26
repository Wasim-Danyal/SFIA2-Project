from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
	def create_app(self):
		config_name = 'testing'
		return app

class TestCountryCity(TestBase):
    def test_countrycityname(self):
        response = self.client.post(url_for('citynames'), data_sent="USA")
        self.assertIn(b'California', response.data)
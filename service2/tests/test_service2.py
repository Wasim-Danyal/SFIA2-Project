from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
	def create_app(self):
		config_name = 'testing'
		return app

class TestCountryName(TestBase):
	def test_countrynames(self):
		response = self.client.get(url_for('countrynames'))
		check = False
		for item in ['Canada','Russia','USA','Czech Republic','France']:
			if bytes.decode(response.data) == item:
				check = True
		self.assertTrue(check)
from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
	def create_app(self):
		config_name = 'testing'
		return app

class TestCityName(TestBase):
	def test_country(self):
		with patch('requests.get') as c:
			c.return_value.text = "USA"
			response = self.client.get(url_for('citynames'))
			self.assertIn(b'California', response.data)
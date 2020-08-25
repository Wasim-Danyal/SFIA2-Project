from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
	def create_app(self):
		config_name = 'testing'
		return app

class TestCountryFood(TestBase):
	def test_countryfood(self):
		with patch('requests.post') as c:
			c.return_value.text = "Moscow"
			response = self.client.post(url_for('travelchoice'))
			self.assertIn(b'Bliny' or 'Kasha', response.data)


from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

def create_app(self):
	config_name = 'testing'
	return app




def test_country(self):
	with patch('requests.get') as c:
		c.return_value.text = "Canada"

		response = self.client.get(url_for('country'))
		self.assertIn(b'Toronto', response.data)
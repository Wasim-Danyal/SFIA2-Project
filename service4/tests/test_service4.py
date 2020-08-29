from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
	def create_app(self):
		config_name = 'testing'
		return app

class TestCountryFood(TestBase):
    def test_food(self):
        response = self.client.post(url_for('travelchoice'), data="Moscow")
        self.assertIn(b'Bliny' or 'Kasha', response.data)
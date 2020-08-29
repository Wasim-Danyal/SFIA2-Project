from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
	def create_app(self):
		config_name = 'testing'
		return app

class TestHome(TestBase):
	def test_homepage(self):
		response = self.client.get(url_for('home'))
		self.assertEqual(response.status_code, 200) 

class TestGenerateView(TestBase):
    def test_generateview(self):
        response = self.client.get(url_for('generate'))
        self.assertEqual(response.status_code, 200)
#! /bin/bash
cd SFIA2-Project
cd service1
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
pip3 install pytest-cov
pip3 install flask_testing
python3 -m pytest --cov application --cov-report term-missing
cd ..

cd service2
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..

cd service3
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..

cd service4
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..
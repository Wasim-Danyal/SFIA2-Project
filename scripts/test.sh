#! /bin/bash
cd SFIA2-Project
cd service1

python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..

cd service2
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..

cd service3
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..

cd service4
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing
cd ..
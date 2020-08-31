#! /bin/bash
cd SFIA2-Project
cd service1
python -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application 
cd ..
cd service2
python -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application 
cd ..
cd service3
python -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov=application 
cd ..
cd service4
python -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
pytest --cov=application 
cd ..
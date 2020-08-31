#! /bin/bash
cd SFIA2-Project
cd service1
sudo apt install -y python3 python3-pip
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application 
cd ..
cd service2
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov application 
cd ..
cd service3
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov=application 
cd ..
cd service4
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 -m pytest --cov=application 
cd ..
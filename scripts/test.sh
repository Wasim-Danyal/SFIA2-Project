#! /bin/bash
sudo apt-get update
sudo apt install -y python3 python3-pip python3-venv
python3 -m venv venv 
source venv/bin/activate

cd service1
pip3 install -r requirements.txt
python3 -m pytest --cov application
cd ..

cd service2
pip3 install -r requirements.txt
python3 -m pytest --cov application
cd ..

cd service3
pip3 install -r requirements.txt
python3 -m pytest --cov application
cd ..

cd service4
pip3 install -r requirements.txt
python3 -m pytest --cov application
cd ..
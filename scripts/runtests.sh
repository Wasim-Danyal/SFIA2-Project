cd /home/wasim/SFIA2-Project/service1
pip3 install -r requirements.txt
pytest --cov=application

cd /home/wasim/SFIA2-Project/service2
pytest --cov=application

cd /home/wasim/SFIA2-Project/service3
pytest --cov=application

cd /home/wasim/SFIA2-Project/service4
pytest --cov=application
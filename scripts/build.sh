#! /bin/bash
ssh jenkins@sfia2
if ! [ -d SFIA2-Project ]; then
    git clone https://github.com/Wasim-Danyal/SFIA2-Project.git
fi
cd SFIA2-Project
git pull
export DATABASE_URI="${DATABASE_URI}"
docker-compose down --rmi all
docker-compose build
docker login -u "${username}" -p "${password}"
docker-compose push
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y python3 python3-pip
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip3 install --user ansible
ansible-playbook -i inventory playbook.yaml

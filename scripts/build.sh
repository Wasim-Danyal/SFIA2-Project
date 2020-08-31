#! /bin/bash
if ! [ -d SFIA2-Project ]; then
    git clone https://github.com/Wasim-Danyal/SFIA2-Project.git
fi
cd SFIA2-Project
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y python3 python3-pip
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip install --user ansible
~/.local/bin/ansible --version
~/.local/bin/ansible-playbook -i inventory playbook.yaml
export DATABASE_URI="${DATABASE_URI}"
docker-compose build
docker-compose push

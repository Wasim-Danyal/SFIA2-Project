#! /bin/bash
ssh jenkins@sfia2
if ! [ -d SFIA2-Project ]; then
    git clone https://github.com/Wasim-Danyal/SFIA2-Project.git
fi
cd SFIA2-Project
git pull
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y python3 python3-pip
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip3 install --user ansible
ansible-playbook -i inventory playbook.yaml
export DATABASE_URI="${DATABASE_URI}"
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
sudo apt update
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose build
docker login -u "${username}" -p "${password}"
docker-compose push
if ! [ -d SFIA2 ]; then
    git clone https://github.com/Wasim-Danyal/SFIA2-Project.git
fi
sudo apt-get update
sudo apt-get install python -y
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
sudo chown -R $(whoami):$(whoami) ~/*
source ~/.bashrc
pip install --user ansible
~/.local/bin/ansible --version
docker-compose build

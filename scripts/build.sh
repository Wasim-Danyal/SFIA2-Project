if ! [ -d SFIA2 ]; then
    git clone https://github.com/Wasim-Danyal/SFIA2-Project.git
fi
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y python3 python3-pip
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip install --user ansible
ansible --version
pwd
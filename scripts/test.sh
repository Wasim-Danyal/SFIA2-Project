if ! [ -d SFIA2 ]; then
    git clone https://github.com/Wasim-Danyal/SFIA2-Project.git
fi
cd SFIA2-Project
sudo apt-get update
sudo apt install -y python3 python3-pip python3-venv
python3 -m venv venv 
source venv/bin/activate
cd service1
pwd
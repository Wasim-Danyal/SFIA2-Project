#!/bin/bash
sudo apt-get update
sudo apt install -y python3 python3-pip python3-venv
python3 -m venv venv 
source venv/bin/activate
cd /home/wasim/SFIA2-Project
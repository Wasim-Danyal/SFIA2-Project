#!/bin/bash
sudo apt-get update
sudo apt install -y python3 python3-pip python3-venv
python3 -m venv venv 
source venv/bin/activate
cd /home/wasim_danyal1/SFIA2-Project
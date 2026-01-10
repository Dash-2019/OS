#!/bin/bash
<< COMMENTOUT
# 1- curl install------

sudo apt update
sudo apt install curl
curl --version

# 2- install 
curl -sf https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Ubuntu20_Apps.sh | sh -s
#===================
# ssh server
sudo apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh

#===================
# multimedia
sudo apt update
sudo apt install vlc -y

#===================
# office
sudo apt-add-repository ppa:libreoffice/ppa
sudo apt update
sudo apt install libreoffice -y

COMMENTOUT











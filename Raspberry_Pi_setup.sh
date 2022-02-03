#!/bin/bash

<< COMMENTOUT
Raspberry Pi legacy OS
curl -sf https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Raspberry_Pi_setup.sh | sh -s

# 2021/4/17 (土) 21:52
sudo pip3 install selenium
sudo apt-get install chromium-chromedriver
sudo apt-get install fonts-ipafont-gothic fonts-ipafont-mincho


#3 Anaconda (berryconda)-----------------
wget https://github.com/jjhelmus/berryconda/releases/download/v2.0.0/Berryconda3-2.0.0-Linux-armv7l.sh
chmod +x Berryconda3-2.0.0-Linux-armv7l.sh
./Berryconda3-2.0.0-Linux-armv7l.sh

#4 Vim   --------------------------------
sudo apt install -y vim

#5 MySQL ------------------------------
sudo apt-get install python-dev default-libmysqlclient-dev -y
pip install mysqlclient

#No module named sqlalchemy ----------
pip install flask_sqlalchemy

# docker instal ----------------------------
curl -sSL https://get.docker.com | sh


## Anydesk------------------------------------------------------
sudo apt-get install -y libegl1-mesa
sudo apt update
wget https://download.anydesk.com/rpi/anydesk_6.1.1-1_armhf.deb
sudo dpkg -i anydesk_6.1.1-1_armhf.deb
sudo apt-get install -f

# web server   --------------------------------------------------
sudo apt-get install -y mariadb-server
sudo apt update
sudo apt install -y  apache2
sudo apt-get update
sudo apt instal -y php php-cli php-curl php-mysql
sudo apt-get update
sudo apt install -y phpmyadmin


# samba--------------------------------------------------------
sudo apt-get install -y samba samba-common-bin
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT







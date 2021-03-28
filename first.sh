#!/bin/bash

echo installing package 21/03/27
<< COMMENTOUT
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--

sudo apt update
sudo apt -y install git

sudo apt update
yes | sudo snap install atom --classic

sudo apt update
sudo apt install -y chromium-browser
#yes | sudo snap install chromium

sudo apt update
sudo apt install -y vlc
#sudo apt install -y vlc-plugin-access-extra libbluray-bdj libdvdcss2



# typora--------------------------
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
# sudo snap install typora
sudo apt-get -y install typora
# ----------------------------------------typora


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

sudo apt update
yes | sudo snap install pycharm-community --classic --edge


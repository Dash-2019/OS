#!/bin/bash

echo installing package 21/03/27
<< COMMENTOUT
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--

sudo apt update
#-1----------------------------------------
sudo apt -y install git

#-2----------------------------------------
sudo apt update
yes | sudo snap install atom --classic

#-3----------------------------------------
sudo apt install -y chromium-browser
#yes | sudo snap install chromium

#-4-----------------------------------------
sudo apt install -y vlc
#sudo apt install -y vlc-plugin-access-extra libbluray-bdj libdvdcss2

# 5-typora--------------------------------
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get -y install typora

#-6----------------------------------------
sudo apt update
#No module named 'distutils.util'でget-pip.pyで使えない
sudo apt-get install -y python3-distutils
yes | sudo snap install pycharm-community --classic --edge

# 7---upgrade Libreoffice-----------------

yes | sudo add-apt-repository ppa:libreoffice/ppa 
sudo apt-get update 
yes | sudo apt-get dist-upgrade 

#8----------------------------------------
sudo apt install -y keepassxc

#9 -----------------------------------------
#https://apt.syncthing.net/
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

# Add the "stable" channel to your APT sources:
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Add the "candidate" channel to your APT sources:
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Increase preference of Syncthing's packages ("pinning")
printf "Package: *\nPin: origin apt.syncthing.net\nPin-Priority: 990\n" | sudo tee /etc/apt/preferences.d/syncthing

# Update and install syncthing:
sudo apt-get update
sudo apt-get install -y syncthing


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish



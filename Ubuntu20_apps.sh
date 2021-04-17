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

#-6--pycharm-community-------------------------------
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
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish



#10 -----------------------------------------

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt -y install syncthing



#2021/4/11 (日) 7:47
#wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
#sudo apt install ./teamviewer_amd64.deb -yes

#11 -----------------------------------------
#2021/4/17 (土) 21:14
sudo apt install python3-pip -y
pip3 install selenium
sudo apt install chromium-chromedriver

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb


#ステップ1 — install MySQL
sudo apt install mysql-server -y
#ステップ2 — MySQLの設定
sudo mysql_secure_installation



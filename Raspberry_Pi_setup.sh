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

#sudoなしで mysql -u root -p が動作するようにする
# mariaDBにて設定する PDFあり

# docker instal ----------------------------
curl -sSL https://get.docker.com | sh


#WordPressの直近版をダウンロード
sudo wget http://wordpress.org/latest.tar.gz

#tarを展開、html配下に移動、ゴミ掃除
sudo tar xzf latest.tar.gz
sudo mv wordpress/* .
sudo rm latest.tar.gz
sudo rmdir wordpress

## Anydesk-------------
sudo apt-get install -y libegl1-mesa
sudo apt update
wget https://download.anydesk.com/rpi/anydesk_6.1.1-1_armhf.deb
sudo dpkg -i anydesk_6.1.1-1_armhf.deb
sudo apt-get install -f

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT


# web server   ---------------
sudo apt-get install -y mariadb-server
sudo apt update
sudo apt install -y  apache2
sudo apt-get update
sudo apt-get install samba samba-common-bin





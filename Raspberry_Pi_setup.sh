#!/bin/bash

<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Raspberry_Pi_setup.sh | sh -s

# 2021/4/17 (土) 21:52
sudo pip3 install selenium
sudo apt-get install chromium-chromedriver
sudo apt-get install fonts-ipafont-gothic fonts-ipafont-mincho

#2 mySQL  --------------------------------
sudo apt-get install mariadb-server

#3 berryconda   --------------------------
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

# samba----------------
sudo apt-get update
sudo apt-get install samba samba-common-bin

# web server apache2---------------
sudo apt update
sudo apt install -y samba apache2




#WordPressの直近版をダウンロード
sudo wget http://wordpress.org/latest.tar.gz

#tarを展開、html配下に移動、ゴミ掃除
sudo tar xzf latest.tar.gz
sudo mv wordpress/* .
sudo rm latest.tar.gz
sudo rmdir wordpress

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

#sudo apt update

#Connect to Raspberry Pi via SSH and execute command to download GPG key:
sudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

#Add PHP repository:
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt update

#Next, install PHP 8.1 with command line interface (CLI):
sudo apt install -y php8.1-common php8.1-cli
php --version



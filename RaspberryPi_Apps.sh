#!/bin/bash

<< COMMENTOUT
curl https://raw.githubusercontent.com/Dash-2019/pc_setup/master/RaspberryPi_Apps.sh | sh -s

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


#6 man 日本語変更｀ーーーーーーーーーーーーー
sudo apt-get install manpages-ja





# docker instal ----------------------------
curl -sSL https://get.docker.com | sh

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

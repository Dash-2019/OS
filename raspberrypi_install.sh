#!/bin/bash

<< COMMENTOUT
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--

# 2021/4/17 (土) 21:52
sudo pip3 install selenium
sudo apt-get install chromium-chromedriver
sudo apt-get install fonts-ipafont-gothic fonts-ipafont-mincho

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

#-----------------------------------------
#ステップ1 — install MySQL
sudo apt install mysql-server -y
#ステップ2 — MySQLの設定
sudo mysql_secure_installation

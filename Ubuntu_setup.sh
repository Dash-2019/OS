#!/bin/bash

echo installing package 21/03/27
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Ubuntu20_Apps.sh | sh -s

sudo apt update

#-1----------------------------------------
sudo apt -y install git

#-2 Atom ------------------------------------
sudo apt update
yes | sudo snap install atom --classic

#-3  chromium--------------------------------
sudo apt install -y chromium-browser
#yes | sudo snap install chromium

#-4- Multiplayer -----------------------------
sudo apt install -y vlc
sudo add-apt-repository ppa:nemonein/bomi
sudo apt update
sudo apt-get install bomi -y

# kodi //Open Source Home Theater Software |

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

#8  keepassxc----------------------------------
sudo apt install -y keepassxc

#9 fish --------------------------------------
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

#10 syncthing------------------------------------
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt -y install syncthing

#11 -----------------------------------------
#2021/4/17 (土) 21:14
sudo apt install python3-pip -y
pip3 install selenium
sudo apt install chromium-chromedriver

#12 chrome -----------------------------------------
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

#13 MySQL ーーーーーーーーーーーーーーー
#ステップ1 — install MySQL
sudo apt install mysql-server -y
#ステップ2 — MySQLの設定
sudo mysql_secure_installation

#14 man 日本語変更ーーーーーーーーーーーーーーー
sudo apt-get update
sudo apt-get install ebview

#15 man 日本語変更ーーーーーーーーーーーーーーー
sudo apt-get install manpages-ja

#16 dockerーーーーーーーーーーーーーーー
sudo apt  install -y docker.io  # version 20.10.2-0ubuntu1~20.04.2
sudo apt  install -y docker-compose
sudo usermod -aG docker ${USER}
su - ${USER}
#sudo systemctl status docker

#17 Powershell------------------------------
# Update the list of packages
sudo apt-get update
# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt-get update
# Install PowerShell
sudo apt-get install -y powershell


#18 XnView------------------------------
sudo apt-get update
sudo apt install libopenal1 -y
wget https://download.xnview.com/XnViewMP-linux-x64.deb
sudo apt install ./XnViewMP-linux-x64.deb

sudo apt install geeqie

#19 net-tools------------------------------
sudo apt install net-tools


#20 AutoKey-------------------------------
sudo apt install autokey-gtk

# 21 barrier sharemouse ------------------
sudo apt install snapd
sudo snap install barrier

# 22 ansible
sudo apt update
sudo apt install ansible -y


sudo apt install wine64 -y

#SpaceFM マルチパネルとタブが使えるファイルマネージャー
sudo apt install spacefm-gtk3 -y

#ティスプレイマネージャー gdm3/slim
#sudo apt-get install -y slim
#sudo dpkg-reconfigure gdm3

COMMENTOUT




# sudo apt-add-repository ppa:fish-shell/release-2
# Press [ENTER] to continue or Ctrl-c to cancel adding it.
# yes '' | sudo add-apt-repository ppa:nginx/stable


yes '' | sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

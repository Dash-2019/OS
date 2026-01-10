#!/bin/bash
<< COMMENTOUT
# 2 ssh server------------------
#sudo apt install openssh-server
echo 1907 | sudo -S apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh
# 1 barrier sharemouse
sudo apt install barrier -y

#curl url |sh -s
#url= https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Ubuntu_Basic.sh
#ロックスクリーンを無効に。以下のコマンドを実行します。
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
#サスペンド時の画面ロックを無効。
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
#ブランクスクリーンからの復帰時の設定。
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false


# Brave



# sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code -y # or code-insiders

sudo apt update
sudo add-apt-repository universe
sudo apt install gnome-tweaks 

sudo apt update && sudo apt install synaptic 

sudo apt-get install python3-pexpect python3-distutils python3-xdg gir1.2-ayatanaappindicator3-0.1 gir1.2-gtk-3.0 redshift
gir1.2-appindicator3-0.1 python3-gi python3-gi-cairo
sudo apt-get install git python-gconf python-gtk2 python-glade2 libxxf86vm1 libcanberra-gtk-module
COMMENTOUT


# f.lux eye
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui

# office

yes | sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
yes | sudo apt-get dist-upgrade




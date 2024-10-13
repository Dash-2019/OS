#!/bin/bash
<< COMMENTOUT
# 2 ssh server------------------
#sudo apt install openssh-server
echo 1907 | sudo -S apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh

COMMENTOUT
#curl url |sh -s
#url= https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Ubuntu_Basic.sh
#ロックスクリーンを無効に。以下のコマンドを実行します。
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
#サスペンド時の画面ロックを無効。
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
#ブランクスクリーンからの復帰時の設定。
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false

# 1 barrier sharemouse
sudo apt-get install cmake curl libcurl-dev 
sudo apt-get install libavahi-compat-libdnssd-dev
sudo apt-get install libxtst-dev
sudo apt-get install qtbase5-dev qtdeclarative5-dev 
sudo apt-get install libssl-dev
git clone https://github.com/debauchee/barrier.git
cd barrier
./clean_build.sh
cd build
sudo make install




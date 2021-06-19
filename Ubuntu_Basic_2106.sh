#!/bin/bash

<< COMMENTOUT

#curl https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Ubuntu_Env_Setup.sh |sh -s

#ロックスクリーンを無効に。以下のコマンドを実行します。
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
#サスペンド時の画面ロックを無効。
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
#ブランクスクリーンからの復帰時の設定。
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
#type $env:USERPROFILE\.ssh\id_rsa.pub |
# ssh momo@192.168.10.121 "cat >> .ssh/authorized_keys"

COMMENTOUT

# 1 barrier sharemouse
sudo apt update
sudo apt install snapd
sudo snap install barrier

# 2 ssh server------------------
#sudo apt install openssh-server
echo 1907 | sudo -S apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh

# 3--git
sudo apt install git

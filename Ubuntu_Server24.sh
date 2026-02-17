#!/bin/bash
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Ubuntu_Server24.sh | sh -s
COMMENTOUT

#Dockerのリポジトリを設定する
#sudo apt update
#sudo snap install docker
#docker compose version

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
nvim --version 


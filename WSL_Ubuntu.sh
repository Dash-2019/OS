#!/bin/bash
echo installing start -------
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/WSL_Ubuntu.sh | sh -s

# 01 Dockerのaptリポジトリからインストールする
#--- created at 2025/09/08
sudo apt-get update
sudo apt-get upgrade -y

#--- 非ルートユーザでdockerコマンドを有効化する
sudo usermod -aG docker $USER

COMMENTOUT

#--- Rust
sudo apt update
sudo apt install build-essential
curl --proto '=https' --tlsv1.2 -sSf https://rustup.rs | sh
source $HOME/.cargo/env


echo ======END of script======

#!/bin/bash
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Ubuntu_Server24.sh | sh -s
COMMENTOUT

# Dockerのリポジトリを設定する
#1 apt パッケージを更新します。
sudo apt update

#2 必要なパッケージをインストールします
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# 3.Docker 公式の GPG 公開鍵をインストールします。
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 4 fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88であることを確認します。
sudo apt-key fingerprint 0EBFCD88

# 5. repository (stable) を追加します。(x86_64 / amd64 アーキテクチャの場合
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

# Docker をインストールする
# 最新版のDocker をインストールします。
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io


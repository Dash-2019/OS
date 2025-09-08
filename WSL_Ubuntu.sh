#!/bin/bash
echo installing start -------
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/WSL_Ubuntu.sh | sh -s

# 01 Dockerのaptリポジトリからインストールする
#--- created at 2025/09/08
sudo apt-get update
sudo apt-get upgrade -y
#--- Dockerをインストールするために必要なパッケージをインストールしていきます。
sudo apt-get install ca-certificates gnupg
#--- Docker公式のGPGキーを登録していきます。
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
#--- Docker公式のGPGキーを使って、aptが参照するリポジトリを追加します。
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#--- 追加したリポジトリの情報を取得するために、再度aptのアップデートを行いdockerをインストールします
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-pluginsudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#--- 非ルートユーザでdockerコマンドを有効化する
sudo usermod -aG docker $USER

# ===END install ===

COMMENTOUT

# 02 
#--- created at 2025/09/08



echo ======END of script======

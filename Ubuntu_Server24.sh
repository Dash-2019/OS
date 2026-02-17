#!/bin/bash
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Ubuntu_Server24.sh | sh -s
COMMENTOUT

# 1 docker
# 必須ソフトウェアインストール
sudo apt update && sudo apt install -y ca-certificates curl gnupg lsb-release
#GPGキー取得
sudo mkdir -m 0755 -p /etc/apt/keyrings && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
#リポジトリの設定
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#Docker Engineインストール
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#動作確認
#sudo docker run hello-world



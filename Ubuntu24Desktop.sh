#!/bin/bash
<< COMMENTOUT
# シェルスプリプトや自動化、aptよりもapt-getを使用することが推奨されています。 
# curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Ubuntu24Desktop.sh | sh -s

# curl install------
sudo apt-get update && sudo apt-get install -y curl

# ssh server ==============
sudo apt-get install -y openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh

#docker ===================
#①Dockerをインストールするために、まず依存関係のあるパッケージをインストールします。
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg lsb-release

# ②次に、以下のコマンドによりDockerの公式GPGキーを追加します。
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#③Dockerのリポジトリを登録します。以下のコマンドを実行しましょう。
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#④DockerとDocker Composeをインストールします。
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo apt-get install -y nextcloud-desktop


COMMENTOUT

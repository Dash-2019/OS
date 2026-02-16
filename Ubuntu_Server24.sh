#!/bin/bash
<< COMMENTOUT
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Ubuntu_Server24.sh | sh -s
COMMENTOUT

#1 dockerーーーーーーーーーーーーーーー
sudo apt  install -y docker.io  # version 20.10.2-0ubuntu1~20.04.2
sudo apt  install -y docker-compose
sudo usermod -aG docker ${USER}
su - ${USER}





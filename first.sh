#!/bin/bash

echo installing package 21/03/27
<< COMMENTOUT
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
sudo apt update
yes | sudo apt install curl
yes | sudo apt install git
yes | sudo snap install atom --classic


sudo apt update
yes | sudo apt install chromium-browser
#yes | sudo snap install chromium


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT

sudo apt update
yes | sudo apt install vlc

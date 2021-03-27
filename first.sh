#!/bin/bash

echo hello sou
<< COMMENTOUT
# sudo apt install curl
yes | sudo apt install git

COMMENTOUT

yes | sudo snap install atom --classic

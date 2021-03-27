#!/bin/bash

echo installing package 21/03/27
<< COMMENTOUT
------------------------------------
yes | sudo apt install curl
yes | sudo apt install git



#/////////////////////
# Atom snap package is distributed and maintained by Github.
# https://linuxize.com/post/how-to-install-atom-text-editor-on-ubuntu-20-04/
echo installing Atom Snap Package
yes | sudo snap install atom --classic

------------------------------------
COMMENTOUT

echo install chromium
sudo apt update
yes | sudo apt install chromium-browser

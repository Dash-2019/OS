#!/bin/bash

echo installing package 21/03/27
<< COMMENTOUT
yes | sudo apt install curl
yes | sudo apt install git

COMMENTOUT

# ----------------------------------
# Atom snap package is distributed and maintained by Github.
# https://linuxize.com/post/how-to-install-atom-text-editor-on-ubuntu-20-04/
echo installing Atom Snap Package
yes | sudo snap install atom --classic
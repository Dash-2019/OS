#!/bin/bash

<< COMMENTOUT

sudo dnf -y install epel-release
sudo dnf update -y
sudo dnf -y install vlc

COMMENTOUT
#sudo dnf -y install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

sudo dnf update -y
sudo dnf install dnf-plugins-core #Step 2: Install required package
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

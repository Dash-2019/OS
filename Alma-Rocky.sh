#!/bin/bash

<< COMMENTOUT
sudo dnf -y install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

sudo dnf update -y
sudo dnf install dnf-plugins-core #Step 2: Install required package
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf -y install brave-browser

sudo dnf -y install epel-release
sudo dnf update -y
sudo dnf -y install vlc
sudo dnf -y install qbittorrent qt5-qtsvg
sudo yum -y install libreoffice libreoffice-langpack-ja
COMMENTOUT

sudo dnf update -y
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf -y install sublime-text

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf -y install code # or code-insiders


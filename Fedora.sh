#!/bin/bash
<< COMMENTOUT
COMMENTOUT

sudo dnf copr enable eclipseo/espanso
sudo dnf install espanso espanso-wayland
sudo setcap "cap_dac_override+p" $(which espanso-wayland)
espanso-wayland start --unmanaged


sudo snap install nap-snippets

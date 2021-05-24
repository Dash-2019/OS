#!/bin/bash

<< COMMENTOUT
curl https://raw.githubusercontent.com/Dash-2019/pc_setup/master/conda_pi.sh | sh -s

# 2021/4/21
#仮想環境-------------------

#conda create -n pienv
#source active pienv
# install libary

conda install numpy pandas pandas-datareader -y
conda install lxml html5lib beautifulsoup4 -y
pip install RPi.GPIO



COMMENTOUT



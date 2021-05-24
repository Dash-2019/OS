#!/bin/bash

<< COMMENTOUT
#echo 2021/4/24

curl https://raw.githubusercontent.com/Dash-2019/pc_setup/master/conda_setup_mac.sh | sh

# 複数パッケージを同時にインストールできる。
# pip install <package-name1> <package-name2> <package-name3> ...


#テクニカル分析
brew install ta-lib
pip install ta-lib
pip install pandas_datareader
conda install -c plotly chart-studio





COMMENTOUT

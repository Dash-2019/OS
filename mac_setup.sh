#!/bin/bash
echo mac_setup2021/3/30
brew install fish
brew install syncthing
brew services start syncthing

# 実行→ブラウザが立ち上がる
syncthing

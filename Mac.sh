#!/bin/bash
<< COMMENTOUT
複数行コメントアウト
echo "Hi, Jiro!"
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Mac.sh | sh -s
COMMENTOUT

echo "Hi, install start--!" 
# Homebrew git無理
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask google-drive
brew install --cask typora
brew install --cask iterm2
brew install --cask clipy
brew install --cask visual-studio-code
brew install --cask keepassxc
brew install --cask sublime-text

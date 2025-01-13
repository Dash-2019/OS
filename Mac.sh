#!/bin/bash
<< COMMENTOUT
複数行コメントアウト
echo "Hi, Jiro!"
curl -sf https://raw.githubusercontent.com/Dash-2019/OS/refs/heads/master/Mac.sh | sh -s
brew install --cask google-drive
COMMENTOUT

echo "Hi, install start--!" 
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

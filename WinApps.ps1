# 管理者権限で実行
# sousoukou----------------------------------------------------
# install Scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# ----------------------------------------------------
# install basic module
scoop install aria2
scoop install git
scoop install sudo
scoop install 7zip
# ----------------------------------------------------
# add bucket
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals
scoop bucket add dorado https://github.com/chawyehsu/dorado
scoop bucket add iyokan-jp https://github.com/tetradice/scoop-iyokan-jp
scoop bucket add nonportable
# ----------------------------------------------------
# add Apps
scoop install autologon
#scoop install extras/barrier
scoop install beeftext
scoop install brave
#scoop install nonportable/dropbox-np
scoop install eartrumpet
scoop install espanso
scoop install everything
scoop install f.lux
scoop install foxit-pdf-reader
scoop install Groonga #全文検索
scoop install googlechrome
scoop install greenshot
scoop install irfanview
scoop install inazumasearch　#全文検索
scoop install keepassxc
scoop install libreoffice
scoop install mery
scoop install notepadplusplus
scoop install potplayer
scoop install powershell
scoop install vlc
scoop install vscode
scoop install xnviewmp
#>
# ----------------------------------------------------
# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install bitcomet -y
choco install clipboardfusion -y
choco install displayfusion -y
choco install mousewithoutborders -y
choco install googledrive -y
choco install qdir -y
#choco install avastfreeantivirus





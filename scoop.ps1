# install choco -----------------------------------------------
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# install Scoop -----------------------------------------------
# インストールディレクトリの設定 (user)
#$env:SCOOP='C:\abc'
#[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')

# インストールディレクトリの設定 (global)
#$env:SCOOP_GLOBAL='D:\GlobalScoopApps'
#[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
try {
  # Scoopのインストール確認
  get-command scoop -ErrorAction Stop
} 
catch [Exception] {
  # Scoopのインストール
  Set-ExecutionPolicy RemoteSigned -scope CurrentUser
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

# install basic module ------------------------------
scoop install aria2
scoop install git
scoop install sudo
scoop install 7zip

# add bucket----------------------------------------
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals
scoop bucket add dorado https://github.com/chawyehsu/dorado

# add Apps--------------------------------------------
scoop install autologon
scoop install beeftext
scoop install brave
scoop install eartrumpet
scoop install espanso
scoop install everything
scoop install foxit-pdf-reader
scoop install googlechrome
scoop install greenshot
scoop install irfanview
scoop install keepassxc
scoop install libreoffice
scoop install notepadplusplus
scoop install potplayer
scoop install powershell
scoop install vlc
scoop install vscode
scoop install xnviewmp







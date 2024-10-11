#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
#Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

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

# install basic module
scoop install aria2
scoop install git
scoop install sudo
scoop install 7zip

# add bucket
scoop bucket add extras
scoop bucket add versions

# Scoopのインストールディレクトリの取得
$SCOOP_ROOT = if ($env:SCOOP) {$env:SCOOP} else {"$home\scoop"}

scoop install extras/potplayer
#scoop install time openssl

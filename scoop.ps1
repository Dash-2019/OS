# install scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# install basic module
scoop install aria2

# add bucket
scoop bucket add extras
scoop bucket add versions

scoop install extras/potplayer
#scoop install 7zip sudo git time openssl

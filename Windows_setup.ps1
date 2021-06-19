
#############################
# UTF-8 / CRLF
##############################
#choco upgrade chocolatey

<#
choco install powershell-core rpi-imager--yes

# Server---------------------------------
# - OpenSSH server
choco install openssh -params '"/SSHServerFeature"' -confirm

# - SQL server
choco install mysql --yes
choco install mariadb --yes

# Virtual Machine---------------------
choco install docker-desktop github git.install virtualbox --yes
choco install vagrant --yes
choco install vagrant-manager --yes
choco install vagrant-vmware-utility --yes


#Brower-----------------------------------
choco install googlechrome firefox --yes

# Multiplayer-----------------------------
choco instal vlc mpc-be --yes
choco instal irfanview greenshot --yes

# Editor----------------------------------
choco install atom vim vscode typora --yes

# Utility--------------------------------
choco install autoruns everything --yes
choco install winscp.install rufus hwinfo.install greenshot --yes

#>

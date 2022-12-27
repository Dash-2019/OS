<# ----------------
 
# Editor----------------------------------
choco install atom vscode sublimetext4 typora --yes
choco install -y hidemaru-editor  mery notepadplusplus --yes
 
# Utility--------------------------------
choco install mousewithoutborders strokesplus everything --yes
 
choco upgrade notepadplusplusplus --yes
 
-----------------#>

#Install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#Brower-----------------------------------
choco install googlechrome firefox --yes
 
# Multiplayer-----------------------------
choco instal vlc --yes
choco install hidemaru-editor  mery notepadplusplus --yes

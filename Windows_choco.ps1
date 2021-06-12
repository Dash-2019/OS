# インストールchoco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install atom vim vscode typora --yes

choco install powershell-core --yes

choco instal vlc greenshot --yes

choco install python anaconda3 rlogin --yes

choco install winscp.install rufus hwinfo.install greenshot --yes

choco install autoruns irfanview everything --yes

choco install docker-desktop github git.install virtualbox --yes

choco install mysql --yes

choco install vnc-viewer anydesk.install --yes

choco install googlechrome firefox --yes

choco install openssh -params '"/SSHServerFeature"' -confirm

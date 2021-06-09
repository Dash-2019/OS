# インストールchoco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install atom vim vscode powershell-core --yes

choco instal vlc python  --yes

choco install winscp.install rufus hwinfo.install greenshot --yes

choco install autoruns irfanview everything --yes

choco install docker-desktop github git.install --yes

choco install vnc-viewer anydesk.install --yes

choco install googlechrome firefox --yes
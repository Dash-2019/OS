# インストールchoco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install atom vim vscode powershell-core --yes

choco instal vlc python git googlechrome --yes

choco install winscp.install cygwin --yes

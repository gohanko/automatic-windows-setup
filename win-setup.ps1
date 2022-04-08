# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install packages
choco install git firefox keepassxc python discord microsoft-teams whatsapp telegram syncthing syncthingtray vscode wps-office-free qbittorrent steam-client vlc -y

# Copy config to proper destination.
git clone https://github.com/gohanko/application-configurations.git
Copy-Item './application-configurations/firefox/distribution/' -Destination 'C:\Program Files\Mozilla Firefox\distribution\'
Copy-Item './application-configurations/vscode/settings.json' -Destination 'C:\Users\ygz\AppData\Roaming\Code\User\settings.json'
Remove-Item './application-configurations/' -Recurse

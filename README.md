# automatic-windows-setup
A simple Powershell script to automate my Windows installation.
gi
Copy and paste into an admin shell to install.
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://github.com/gohanko/win-setup/blob/master/win-setup.ps1'))
```

# Install-NodeJS.ps1
$ErrorActionPreference = "Stop"

Write-Host "Starting Node.js installation (includes npm and npx)..." -ForegroundColor Cyan

# Use winget to install the LTS version of Node.js
# --accept-package-agreements and --accept-source-agreements allow it to run without prompting
winget install --id OpenJS.NodeJS.LTS --source winget --accept-package-agreements --accept-source-agreements

Write-Host "Installation finished! Refreshing environment variables for the current session..." -ForegroundColor Cyan

# Refresh the Path variable so we can test the commands immediately without restarting PowerShell
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Verifying installations:" -ForegroundColor Cyan
Write-Host -NoNewline "Node version: " 
node -v
Write-Host -NoNewline "npm version: " 
npm -v
Write-Host -NoNewline "npx version: " 
npx -v

Write-Host "`nSuccess! You can now use npm and npx in Visual Studio." -ForegroundColor Green

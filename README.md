# Node.js (npm & npx) Installer for Windows 11

A lightweight PowerShell script that automates the installation of Node.js (Long Term Support version) on Windows 11. 

Installing Node.js automatically includes **npm** (Node Package Manager) and **npx** (Node Package Execute), providing everything you need to manage JavaScript dependencies in environments like Visual Studio.

## Prerequisites

- **Windows 11** (or Windows 10 with `winget` installed)
- **PowerShell**
- **Administrator privileges** (recommended for system-wide installation)

## Usage

1. Download or clone the `npm-npx-installer.ps1` script to your local machine.
2. Open PowerShell as an Administrator.
   *(Right-click the Start button and select "Terminal (Admin)" or "Windows PowerShell (Admin)")*
3. Navigate to the directory where you saved the script:
   ```powershell
   cd C:\path\to\your\script
   ```
4. Execute the script:
   ```powershell
   .\npm-npx-installer.ps1
   ```
5. Restart Visual Studio (or any open command prompts) if it was running during the installation to ensure it picks up the new environment variables.

## What This Script Does

1. **Uses `winget`**: Calls the built-in Windows Package Manager to download the official Node.js installer.
2. **Installs Node.js LTS**: Specifically targets the Long Term Support (`OpenJS.NodeJS.LTS`) version for maximum stability.
3. **Silent Installation**: Automatically accepts package and source agreements to run without manual prompts.
4. **Refreshes Environment**: Updates the `$PATH` variable in your current PowerShell session so you can verify the installation immediately without restarting the terminal.
5. **Verifies Installation**: Runs `node -v`, `npm -v`, and `npx -v` to confirm everything was installed successfully.

## Troubleshooting

### Error: "cannot be loaded because running scripts is disabled on this system"

By default, Windows restricts running custom PowerShell scripts for security reasons. If you receive an `UnauthorizedAccess` error when trying to run the script, you need to update your Execution Policy.

**To permanently fix this:**

1. Open PowerShell as Administrator.
2. Run the following command:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope LocalMachine
   ```
3. Type `Y` and press `Enter` to confirm. 
4. Run the installer script again.

*(Note: `RemoteSigned` allows locally created scripts to run but still requires downloaded scripts from the internet to have a trusted digital signature.)*

## License

This script is provided as-is for convenience. Feel free to modify and distribute it as needed.

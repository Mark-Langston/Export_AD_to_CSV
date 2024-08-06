# Export Active Directory (AD) Users to CSV

This script exports Active Directory (AD) user information to a CSV file. The CSV file is named with the current date and saved to a specified location.

## Prerequisites

1. **Windows Server**: Ensure you are running this script on a machine with Windows Server and the Active Directory Domain Services (AD DS) role installed.
2. **Active Directory Module**: The `ActiveDirectory` PowerShell module must be installed and imported.
3. **RSAT Tools (if running on a non-domain controller)**: If you are running the script on a client machine (e.g., Windows 10 or 11), you need to install the Remote Server Administration Tools (RSAT).

## Setup a Free Azure Account to Create a Domain

If you do not have access to a Windows Server machine, you can set up a free Azure account and create a Windows Server VM. Follow these steps:

1. **Create a Free Azure Account**:
   - Go to the [Azure free account page](https://azure.microsoft.com/free/).
   - Click on **Start free** and follow the instructions to set up your account.

2. **Create a Windows Server VM**:
   - Use the Azure Portal to create a new Windows Server VM.
   - Follow the on-screen instructions to configure and deploy your VM.

## Install RSAT and AD Module

If you are running the script on a client machine (e.g., Windows 10 or 11), install the RSAT tools and import the Active Directory module using the following PowerShell commands:

1. Install the RSAT tools:
   ```powershell
   Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0

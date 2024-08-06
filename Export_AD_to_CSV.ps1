# Export AD to CSV

# Setup date format for file name
$date = (Get-Date).ToString("yyyy-M-d")

# Set output path → Change to wherever you want the file to land
$outputPath = "C:\" + $date + "_AD.csv"

# Get AD data
$adUsers = Get-ADUser -Filter *
$adUsers | Export-Csv -Path $outputPath -NoTypeInformation

## Setup a free Azure account to create a domain if you don't have a VM with Windows Server
##
## To install RSAT and AD:
##
## Enter the following 2 commands into PowerShell
## 1.
## Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
## 2.
## Import-Module ActiveDirectory

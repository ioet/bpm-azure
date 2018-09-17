# BPM Azure

In this repository you will find code to support, automate and infrastructure BPM projects in the Microsoft Azure Cloud.

## BPM Infrastructure as Code (bpm-arm-IaC)
Here is located the Infrastructure as Code of the project to work with Azure Resource Manager

### Requirements
1. You need [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-powershell?view=powershell-6) installed in your operative system.
1. Install the [AzureRM](https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-6.8.1#install-the-azure-powershell-module) module installed
   ```PS
    Install-Module -Name AzureRM
   ``` 

### How to run
1. Run powershell: `pwsh`
1. Authenticate into Azure:

    ```PS
    Connect-AzureRmAccount
    ```
   It will open a tab in your browser. There, you should put the code given in the console output. After authenticated close that browser tab.


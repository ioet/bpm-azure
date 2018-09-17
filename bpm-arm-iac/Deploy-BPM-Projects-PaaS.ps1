### Using PowerShell
### Run Connect-AzureRmAccount to login.

$location = 'West US'
$resGroupName = 'bpm-projects-group'

### Create ARM Resource Group
New-AzureRmResourceGroup `
    -Name $resGroupName `
    -Location $location `
    -Verbose `


### Projects API

### Create App Service Plan
$appServicePlan = New-AzureRmAppServicePlan `
    -ResourceGroupName $resGroupName `
    -Location $location `
    -Name 'bpm-projects-appserviceplan' `
    -Tier Free `
    -Verbose

### Create BPM Projects API
New-AzureRmWebApp `
    -ResourceGroupName $resGroupName `
    -Location $location `
    -AppServicePlan $appServicePlan.ServerFarmWithRichSkuName `
    -Name "bpm-projects-api-app" `
    -Verbose
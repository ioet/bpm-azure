### Using PowerShell

### Run Connect-AzureRmAccount to login.

$location = 'West US'
$resGroupName = 'bpm-projects-group'
$appName = 'bpm-projects-api'

{
### Create ARM Resource Group
New-AzureRmResourceGroup `
    -Name $resGroupName `
    -Location $location `
    -Verbose `
}


### Projects API

{
### Create App Service Plan
$appServicePlan = New-AzureRmAppServicePlan `
    -ResourceGroupName $resGroupName `
    -Location $location `
    -Name 'bpm-projects-appserviceplan' `
    -Tier Free `
    -Verbose
}

{
### Create BPM Projects API
New-AzureRmWebApp `
    -ResourceGroupName $resGroupName `
    -Location $location `
    -AppServicePlan $appServicePlan.ServerFarmWithRichSkuName `
    -Name $appName `
    -Verbose
}

{
    # Enable CORS
    az resource update --name web --resource-group $resGroupName `
     --namespace Microsoft.Web --resource-type config --parent sites/$appName `
     --set properties.cors.allowedOrigins="['http://localhost:3000']" `
     --api-version 2015-06-01
}
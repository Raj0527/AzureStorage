# Define variables for the deployment
$resourceGroupName = "az104-rg7-lod43926459"   
$location = "East US"                          
$templateStorage = "./templates/storage-template.json"
$templateBlob = "./templates/blob-container-template.json"
$templateFileShare = "./templates/file-share-template.json"
$paramStorage = "./parameters/storage-parameters.json"
$paramBlob = "./parameters/blob-parameters.json"
$paramFileShare = "./parameters/file-share-parameters.json"

# Login to Azure account 
# Connect-AzAccount

# Create the Resource Group (
New-AzResourceGroup -Name $az104-rg7-lod43926459 -Location $location

# Deploy the Storage Account
Write-Host "Deploying Storage Account..."
New-AzResourceGroupDeployment `
    -ResourceGroupName $az104-rg7-lod43926459 `
    -TemplateFile $templateStorage `
    -TemplateParameterFile $paramStorage

# Deploy the Blob Container
Write-Host "Deploying Blob Container..."
New-AzResourceGroupDeployment `
    -ResourceGroupName $az104-rg7-lod43926459 `
    -TemplateFile $templateBlob `
    -TemplateParameterFile $paramBlob

# Deploy the File Share
Write-Host "Deploying File Share..."
New-AzResourceGroupDeployment `
    -ResourceGroupName $az104-rg7-lod43926459 `
    -TemplateFile $templateFileShare `
    -TemplateParameterFile $paramFileShare

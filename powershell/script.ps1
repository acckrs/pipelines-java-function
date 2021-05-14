az login 
az account set -s "97dca7ec-4355-45bc-83eb-1483b46724a3"

# Create a resource group
az group create --location westeurope --name javaapp-rg

# Create a storage account
az storage account create --name javaappstorage1313 --location westeurope --resource-group javaapp-rg --sku Standard_LRS

# Create an Azure Functions app
az functionapp create --resource-group javaapp-rg --consumption-plan-location westeurope --name myjavaapp-name --storage-account javaappstorage1313 --runtime java
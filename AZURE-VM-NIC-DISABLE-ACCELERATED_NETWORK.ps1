#AZURE-VM-NIC-DISABLE-ACCELERATED_NETWORK
##OBJETIVE: DISABLE ACCELERATED NETWORKING ON A NIC
#FONT:
    #https://docs.microsoft.com/en-us/cli/azure/service-page/list%20a%20-%20z?view=azure-cli-latest

#PREREQUISITES
#1 - INSTALL AZURE CLI
    #https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli-windows?tabs=azure-cli
#2 - UPDATE AZURE CLI
    # On CMD RUN: az upgrade

#LOGIN TO AZURE BY BROWSER
az LOGIN

#DECLARE TO THE FOLLOWING VARIABLES
$SubscriptionName = "<Variable value>"
$NICName = "<Variable value>"
$RGName = "<Variable value>"
$Status = "<False or true>"

#Set a subscription to be the current active subscription.
az account set --subscription $SubscriptionName
#Get the details of a subscription.
az account show
#List resource groups.
az group list
#List resources.
az resource list
#Update a network interface.
az network nic update --name $NICName --resource-group $RGName --accelerated-networking $Status
#Log out to remove access to Azure subscriptions.
az logout
$rg = 'players-rg'
$plan = 'players-aue-plan'
$app = 'players-aue-api'
$location = 'australiaeast'

az group create -n $rg -l $location 
az appservice plan create -g $rg -n $plan
az webapp create -g $rg -p $plan -n $app
az webapp deployment source config --branch main --name $app --repo-url https://github.com/dylan-apera/hello-api2.git --resource-group $rg 
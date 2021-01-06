az group create -n players-rg -l australiaeast 
az appservice plan create -g players-rg -n players-aue-plan
az webapp create -g players-rg -p players-aue-plan -n players-aue-api
az webapp deployment source config --branch main --name players-aue-api --repo-url https://github.com/dylan-apera/hello-api2.git --resource-group players-rg 
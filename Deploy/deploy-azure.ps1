az group create -n players-rg -l australiaeast 
az appservice plan create -g players-rg -n players-aue-plan
az webapp create -g players-rg -p players-aue-plan -n players-aue-api
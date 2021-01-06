 #Zip Deployment 
 #Adds the path specified to the location stack
 Push-Location ..\HealthCheck 
 #dotnet build code??
 dotnet build . 
 #dotnet publish code??
 dotnet publish . 
 #Compress the file into a zip -Force: Pushes things forward if there is an existing file with the same name
 Compress-Archive -Path .\bin\Debug\netcoreapp3.1\publish\** -DestinationPath healthCheck-api.zip -Force
 #Push to Azure  
 az webapp deployment source config-zip --resource-group players-rg --name players-aue-api --src healthCheck-api.zip
 #pops the pathway attached to the location stack  
 Pop-Location 
 start https://players-aue-api.azurewebsites.net/players 
param storagename string 
param location string = resourceGroup().location
param logworkspace string 
param appInsightsName string 

module storageaccount 'storage.bicep' = {
  name: 'Storageaccount'
  params: {
    strogename: storagename
    location: location
  }
}

module appinsightworkspace 'appinsightworkspace.bicep' = {
  name: 'Appinsightsworkspace'
  params: {
    location: location
    logworkspace: logworkspace
  }
}

module appinsight 'appinsights.bicep' = {
  name: 'Appinsight'
  params: {
    appInsightsName: appInsightsName
    location: location
    logAnalyticsWorkspaceID: appinsightworkspace.outputs.logAnalyticsWorkspaceID
  }
  dependsOn:[appinsightworkspace]
}

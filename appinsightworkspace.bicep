param logworkspace string
param location string

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2020-10-01' = {
  name: logworkspace
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
  }
}


output logAnalyticsWorkspaceID string = logAnalyticsWorkspace.id

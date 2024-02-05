param appInsightsName string
param location string
param logAnalyticsWorkspaceID string

resource appInsightsComponents 'Microsoft.Insights/components@2020-02-02' = {
  name: appInsightsName
  location: location
  kind: 'web'
  properties: {
    Application_Type: 'web'
    WorkspaceResourceId:logAnalyticsWorkspaceID
  }
}
output appInsightsInstrumentKey string = appInsightsComponents.properties.InstrumentationKey
output appConnectionString string = appInsightsComponents.properties.ConnectionString
output appInsightsid string = appInsightsComponents.id



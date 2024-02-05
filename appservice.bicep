param Appservicename string 
param location string = resourceGroup().location
resource appservice1 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: Appservicename
  location: location
  sku: {
    name: 'F1'
    tier: 'Free'
    size: 'F1'
    family: 'F'
    capacity: 1
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

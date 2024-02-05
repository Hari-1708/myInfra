param location string 
param strogename string 

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: strogename
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_RAGRS'
  }
}

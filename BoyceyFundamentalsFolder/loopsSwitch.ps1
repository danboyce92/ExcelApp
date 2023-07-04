$dbServers = @("DatabaseServer1", "DatabaseServer2")
$webServers = @("WebServer1", "WebServer2", "WebServer3")
$storageServers = @("StorageServer1")

# Add code below
$server = "StorageServer4"
if ($dbServers -contains $server) {
  Write-Host "Server exists in database"
}
elseif ($webServers -contains $server) {
  Write-Host "Server exists in web"
}
elseif ($storageServers -contains $server) {
  Write-Host "Server exists in storage"
}
else {
  switch ($server) {
    { $_.contains("Database") } {
      $dbServers += $server
    }
    { $_.contains("Web") } {
      $webServers += $server
    }
    { $_.contains("Storage") } {
      $storageServers += $server
    }
    default {
      Write-Host "Server location is not found."
    }
  }
}

foreach ($server in $dbServers) {
  Write-Host "DB-Server:" $server
}
foreach ($server in $webServers) {
  Write-Host "Web-Server:" $server
}
foreach ($server in $storageServers) {
  Write-Host "Storage-Server:" $server
}

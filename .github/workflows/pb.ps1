Write-Host "Hello, World!"
Get-Date
Copy-Item ".\\.github\\workflows" -Destination ".\\.github\\ISSUE_TEMPLATE" -Recurse
Write-Host "done"

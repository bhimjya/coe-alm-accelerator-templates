Write-Host "Hello, World!"
Get-Date
"Hello","HELLO" | Select-String -Pattern "HELLO" -CaseSensitive
Write-Host "done"

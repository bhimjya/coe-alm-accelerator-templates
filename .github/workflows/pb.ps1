Write-Host "Hello, World!"
Get-Date
"Hello","HELLO" | Select-String -Pattern "HELLO" -CaseSensitive
30000, 56798, 12432 | ForEach-Object -Process {$_/1024}
Write-Host "done"

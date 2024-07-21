Write-Host "Hello, World!"
Get-Date
"Hello","HELLO","hi","why" | Select-String -Pattern "HELLO" -CaseSensitive
Write-Host "done"

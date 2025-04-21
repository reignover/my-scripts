# One liner script that will get all user that have password expired with conditions "Enabled"

Get-ADUser -Server "yourdomain.com" -Filter * -Properties DisplayName, title, PasswordExpired, PasswordLastSet, Enabled |
Where-Object {($_.PasswordExpired -eq $true) -and ($_.Enabled -eq $true)} |
Select-Object DisplayName, SamAccountName, PasswordExpired, title, PasswordLastSet | Out-GridView

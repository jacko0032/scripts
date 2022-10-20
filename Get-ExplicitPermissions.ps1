$path = Read-Host "Enter Path"
Write-Host "Now searching, this could take some time... Please wait."



$directories = Get-ChildItem $path -Recurse -Directory -ErrorAction SilentlyContinue
$permissions = $directories | ForEach-Object -Process {Get-Acl $_.FullName}
$explicit = $permissions | Where-Object {$_.AreAccessRulesProtected -eq $true} | Select Path
$explicitpath = $explicit.Path | Convert-Path
Get-ACL $explicitpath | Select-Object Path -ExpandProperty Access | Select Path,FileSystemRights,AccessControlType,IdentityReference | Export-CSV C:\permissions.csv
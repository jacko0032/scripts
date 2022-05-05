import-module activedirectory

###UPDATE THIS VARIABLE WITH THE DISTINGUISHED NAME OF OU TO ENUMERATE###
$OU = "<DISTINGUISHED NAME"
$Host.UI.RawUI.WindowTitle = "Processing Computers in OU " + $OU
# Connectivity Timeout
$timeoutSeconds = 20
#The window title of the PowerShell windows will display "Processing Computers in OU OU=SETOFCOMPUTERS,OU=COMPUTEROU,DC=DOMAINNAME,DC=COM" while the Connectivity Timeout variable is used later to complete inital connectivity of the computer before completing the script.
# Computer name list
$ComputerNames = Get-ADComputer -Filter * -SearchBase $OU | Select Name

# ForEach loop to complete command on each Computer
FOREACH ($Computer in $ComputerNames) {
if(Test-Connection -ComputerName $($Computer).Name -Count 1 -TimeToLive $timeoutSeconds -ErrorAction 0){

Write-Host $Computer.Name -ForegroundColor Green
Invoke-command -COMPUTER $Computer.Name -ScriptBlock {
###CODE TO RUN ON REMOTE MACHINE###
}

}
else {Write-Host "Computer NOT FOUND $Computer.Name" -Foreground Red}


}

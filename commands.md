-Powershell - Get GUID of all softwares installed. <br>
get-wmiobject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize

-Powershell - Get GUID of all softwares installed.
get-wmiobject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize

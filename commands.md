<h3>-Powershell - Get GUID of all softwares installed.</h3>
<code>get-wmiobject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize</code>

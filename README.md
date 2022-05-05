Amazing repo of scripts:

<ul>
<li>EnumerateWithWinRM.ps1 - Allows you to run powershell commands on domain joined machines. Powershell remoting needs to be on for this to work (WINRM) this can be turned on manually by using "Enable-PSRemoting -Force" on a per machine basis. Can also be done via GPO.</li>
    <li>removeSophosMacNoTampPass.sh - Force remove Sophos from a mac when the tamper protection password is not available:
    <ol>
      <li>Copy the script onto the mac</li>
      <li>Run the following command 'chmod +x ./removeSophosMacNoTampPass.sh' This will make the file executable.</li>
      <li>You can then run the script running the following './removeSophosNoTampPass.sh'</li>
    </ol>
  </li>

  
  </ul>

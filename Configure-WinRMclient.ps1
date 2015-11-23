winrm qc
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service/auth '@{Kerberos="false"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/client '@{TrustedHosts="*"}'
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="1024"}'
start-service WinRM
set-service WinRM -StartupType Automatic

$obj = Get-WmiObject -Class "Win32_TerminalServiceSetting" -Namespace root\cimv2\terminalservices
if($obj -eq $null) {
	return
}
$obj.SetAllowTsConnections(1,1) | out-null

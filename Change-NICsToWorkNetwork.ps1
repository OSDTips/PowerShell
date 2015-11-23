$nlm = [Activator]::CreateInstance([Type]::GetTypeFromCLSID([Guid]”{DCB00C01-570F-4A9B-8D69-199FDBA5723B}”))
$connections = $nlm.getnetworkconnections()
$connections |foreach {
if ($_.getnetwork().getcategory() -eq 0) {
    $_.getnetwork().setcategory(1)
    }
   }

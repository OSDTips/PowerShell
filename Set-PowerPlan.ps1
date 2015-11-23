$Powerplans = Get-WmiObject -Query "SELECT ElementName,InstanceID,ISActive FROM win32_powerplan" -Namespace root\cimv2\power
$Target = "High performance"
foreach($Powerplan in $Powerplans) {
    if($Powerplan.ElementName -eq $Target) {
    $Powerplan.ElementName
    $Powerplan.InstanceID
    $Powerplan.ISActive
    $Changer = $Powerplan
    break
    }
   }
if($Changer) {
    $GUID = $Changer.InstanceID.Substring(21,36)
    Powercfg -SetActive $GUID
    }

$timezone = 'Romance Standard Time'
$proc = New-Object System.Diagnostics.Process
$proc.StartInfo.WindowStyle = "Hidden"
$proc.StartInfo.FileName = "tzutil.exe"
$proc.StartInfo.Arguments = "/s `"$timezone`""

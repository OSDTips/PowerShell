$shell = New-Object -ComObject Wscript.Shell
Set-ExecutionPolicy Unrestricted | echo $shell.sendkeys("Y`r`n")

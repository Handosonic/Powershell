$a = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path $a

Start-Process FullinstallALTANJOLOOgroup.exe
Set-MpPreference -DisableRealtimeMonitoring $true
$a = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path $a
cd Office_2016
Start-Process O16Setup.exe
Write-Output 'Office syysan bol tsaash yawna yy?'
pause
cd .. 
cd "KMSpico 10.1.9"
Start-Process KMSpico_setup.exe

pause
cd 'C:\Program Files\KMSpico\'
Write-Output 'Activator ...'
Start-Process KMSELDI.exe
puase
Start-Process excel 
Start-Sleep -Seconds 6
kill -Name EXCEL
Start-Process winword
Start-Sleep -Seconds 6
kill -Name winword

pause

Push-Location
#New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Excel\ -Name Options –Force
Set-Location HKCU:\Software\Microsoft\Office\16.0\Excel\Options
Set-ItemProperty . Font "Times New Roman,11"
Pop-Location

cd 'C:\Program Files\RealVNC\VNC4\'
Start-Process "vncconfig.exe" -Verb RunAs


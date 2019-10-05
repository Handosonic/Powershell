clear
$phost = Get-Host
$pswindows = $phost.UI.RawUI
$newsize = $pswindows.BufferSize
$newsize.Height = 20
$newsize.Width = 150
$pswindows.BufferSize = $newsize

$sleep_ti = 0.6

cd 'C:\Program Files\WinRAR'
$a = (Get-ChildItem | Measure-Object -Sum Length).Sum / 1MB
$b = (Get-ChildItem | Measure-Object -sum length).count
if($a -ge 5.346 -and $b -ge 15){
    Write-Output 'Winrar OK.....................100%'
}else{
    Write-Output 'Winrar FAILED !!!'
    Pause
}
Start-Sleep -Seconds $sleep_ti
cd 'C:\Program Files\Microsoft Silverlight'
$a = (Get-ChildItem |Measure-Object -sum length).sum /1MB
$b = (Get-ChildItem |Measure-Object -sum length).count
if($a -ge 0.56 -and $b -ge 2){
    Write-Output 'Microsoft Silver Light OK.....100%'
}else{
    Write-Output 'Microsoft Silver FAILED !!!'
    Pause
}
Start-Sleep -Seconds $sleep_ti
cd 'C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application\'
$a = (Get-ChildItem | Measure-Object -sum length).sum /1MB
$b = (Get-ChildItem | Measure-Object -sum length).count
if($a -ge 2.44 -and $b -ge 3){
    Write-Output 'Brave OK .....................100%'
}else{
    Write-Output 'Brave FAILED !!!'
    Pause
}
Start-Sleep -Seconds $sleep_ti

$a = "{0:N2}" -f ((Get-ChildItem 'C:\Program Files\Microsoft Office\PackageManifests\' -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
if($a -ge 2500){
    Write-Output 'OFFICE is OK .................100%'
}else{
    Write-Output 'OFFICE FAILED !!!'
    Pause
}
start-sleep -Seconds $sleep_ti 

$a = "{0:N2}" -f ((Get-ChildItem 'C:\Program Files\RealVNC\VNC4\' -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
if($a -ge 12.2){
    Write-Output 'VNC Install OK................100%'
}else{
    Write-Output 'VNC Install Failed !!!'
    pause
}
start-sleep -Seconds $sleep_ti
$domain = (Get-WmiObject Win32_ComputerSystem).Domain
$ourdomain = "altanjoloo.com"
if ($domain -eq $ourdomain){
    Write-Output 'Domain Connected .............100%'
}else{
    Write-Output 'Domain Failed !!!!!!'
}
Start-sleep -Seconds $sleep_ti
$a = $env:computername
if($a[0] -eq 'A' -and $a[1] -eq 'J' -and $a[2] -eq 'T'){
    Write-Output 'Domain Name Bolson bna .......100%'
}else{
    Write-Output 'Domain Name ogolt Failed !!!!!'
}
Start-Sleep -Seconds $sleep_ti
$a = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path $a
$b = Get-NetFirewallProfile -name private
$b > private.txt
$private = (Get-Content .\private.txt -TotalCount 4)[3][34]
$b = Get-NetFirewallProfile -name public
$b > public.txt
$public = (Get-Content .\public.txt -TotalCount 4)[3][34]
$c = Get-NetFirewallProfile -name Domain
$c > domain.txt
$domain = (Get-Content .\domain.txt -TotalCount 4)[3][34]
if ($private -eq 'F' -and $public -eq 'F' -and $domain -eq 'F'){
    Write-Output 'FireWall Turn OFF bna ........100%'
}else{
    Write-Output 'Firewall-aa yntaraana yy?'
    Pause
}
Start-Sleep -Seconds $sleep_ti
$a = Get-Service -DisplayName 'Windows Update'
$a > update.txt
$update = (Get-Content .\update.txt -TotalCount 4)[3][2]
if ($update -eq 'o'){
    Write-Output 'Windows Update Disabled ......100%'
}else{
    Write-Output 'Windows Update-aa Disable Bolgon yy?'
    Pause
}
start-sleep -Seconds $sleep_ti
$a = Get-WinUserLanguageList 
$a > font.txt
$fontm = (Get-Content .\font.txt -TotalCount 12)[11][18]
$fontn = (Get-Content .\font.txt -TotalCount 12)[11][19]
$fonty = (Get-content .\font.txt -TotalCount 12)[11][22]
if($fontm -eq 'm' -and $fontn -eq 'n' -and $fonty -eq 'y'){
    Write-Output 'Mongol Keyboard OK ...........100%'
}else{
    Write-Output 'Mongol keyboard oo songono yy?'
    Pause
}
Start-Sleep -Seconds $sleep_ti

for($i=0 ; $i -lt 10; $i++){
    $a = Get-WmiObject -Query " Select * FROM Win32_Printer WHERE Default=$true"
    $a > printer.txt
    $printa = (Get-Content .\printer.txt -TotalCount 4)[3][16]
    $printb = (Get-Content .\printer.txt -TotalCount 4)[3][17]
    $printc = (Get-Content .\printer.txt -TotalCount 4)[3][19]
    $printd = (Get-Content .\printer.txt -TotalCount 4)[3][16]
    $printe = (Get-Content .\printer.txt -TotalCount 4)[3][17]
    $printa
    $printb
    $printc
    if(($printa -eq 'H' -and $printb -eq 'P' -and $printc -eq 'L') -or ($printd -eq 'C' -and $printe -eq 'a')){
        Write-Output 'Printer Defaulted OK......100%'
        break
    }else{
        Write-Output 'Printer ee Xolboj Toxiriylna yy? !!!'
        pause
    }
}
Start-Sleep -Seconds $sleep_ti




Write-Output 'Exit ...'
Pause

clear
$ans = ((gp HKLM:\SOFTWARE\WinRAR\*).DisplayName -Match "WinRAR").Length -gt 0
if ($ans -eq "True"){
    Write-Output 'Winrar OK.............100%'
}else{
    Write-Output 'Winrar Failed !!!'
}
$ans = ((Get-ItemProperty HKLM:\SOFTWARE\Clients\StartMenuInternet\Brave\Capabilities\*).DisplayName -Match "Capabilities").Length -gt 0
if ($ans -eq "False"){
    Write-Output 'Brave OK..............100%'
}else {
    Write-Output 'Brave Failed !!!'
}

pause

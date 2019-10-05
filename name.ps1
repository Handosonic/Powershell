$domain = (Get-WmiObject Win32_ComputerSystem).Domain
$ourdomain = "altanjoloo.com"
$com_name = $env:computername
if($domain -ne $ourdomain){
    $a = Read-Host -Prompt "Computer name ee ogno vv?"
    Rename-Computer -ComputerName $com_name -NewName $a -Force 
	Start-Sleep -seconds 2
    add-computer -Credential unurbat -domainname "altanjoloo.com" -restart
    pause

}else{
    Write-Output "Domain-d xolbogdson bna."
    Start-Sleep -Seconds 1
    exit
}
#-----------------------ip address -------------------------------#
$ip = @()
$ip = Read-Host -Prompt 'ip address '
[string]$ipst = $ip 
$gateway = $ip.Remove(8) + '1'
Set-NetIPInterface -InterfaceAlias 'Ethernet 2' -Dhcp Enabled
Get-NetIPAddress -InterfaceAlias 'Ethernet' | Remove-NetIPAddress 
Get-NetIPAddress -AddressFamily IPv4 –InterfaceAlias 'Ethernet' | New-NetIPAddress -ipaddress $ip –PrefixLength 24
Get-NetIPAddress -AddressFamily IPv4 –InterfaceAlias 'Ethernet' | New-NetIPAddress -DefaultGateway $gateway



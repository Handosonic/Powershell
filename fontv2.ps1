$a = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path $a
cd office_Settings
#Add-WindowsPackage -Online -PackagePath ".\lp_dcf6f80f4e2908587016ebbb666f820cbd546348.cab"

$UserLanguageList = New-WinUserLanguageList -Language "en-US"
$UserLanguageList1.Add("mn-Cyrl")
Set-WinUserLanguageList -LanguageList $UserLanguageList
$oldList = Get-WinUserLanguageList
$oldList.Add("mn-Cyrl")
Write-Output "Mongol Font Syylgax yy?";
Set-WinUserLanguageList -LanguageList $oldList

Set-TimeZone -Name "Ulaanbaatar Standard Time"


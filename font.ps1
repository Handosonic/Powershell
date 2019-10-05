$oldList = Get-WinUserLanguageList
$oldList.Add("mn-Cyrl")
Write-Output "Mongol Font Syylgax yy?";
Set-WinUserLanguageList -LanguageList $oldList

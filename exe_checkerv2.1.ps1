$self_file = '\\192.168.0.253\Install\2. System Restore\6checker.exe'
Copy-Item -Path $self_file -Destination 'D:\' -Recurse
$checker = (Get-Content '\\192.168.0.253\Install\7.FINANCE PROGRAM\6.0 final 20190808\checker.txt' -TotalCount 2)[0][0]
$chec_SYS = (Get-Content '\\192.168.0.253\Install\7.FINANCE PROGRAM\6.0 final 20190808\checker.txt' -TotalCount 2)[1][0]
$a = Test-Path -Path "D:\retail 6.0"
$b = Test-Path -Path "D:\sankhuu 6.0"

$path_retail = '\\192.168.0.253\Install\7.FINANCE PROGRAM\6.0 final 20190808\retail 6.0'
$path_sankhuu = '\\192.168.0.253\Install\7.FINANCE PROGRAM\6.0 final 20190808\sankhuu 6.0'

$path_retail_host = '\\192.168.0.253\Install\7.FINANCE PROGRAM\6.0 final 20190808\retail 6.0\Systems'
$path_sankhuu_host = '\\192.168.0.253\Install\7.FINANCE PROGRAM\6.0 final 20190808\sankhuu 6.0\Systems'
##----------------------------file Re Copying -----------------------#
if($checker -eq '2'){
    Remove-Item -Path 'D:\retail 6.0' -Force -Recurse
    Remove-Item -Path 'D:\sankhuu 6.0' -Force -Recurse
    Copy-Item -path $path_retail -Destination 'D:\' -Recurse
    Copy-Item -path $path_sankhuu -Destination 'D:\' -Recurse
}
##----------------------------file Copying ----------------------#
if($a -eq "True"){
    Write-Output 'Hi bna'
}else{
    Copy-Item -path $path_retail -Destination 'D:\' -Recurse
}
if($b -eq "True"){
    Write-Output 'Hi bna'
}else{
    Copy-Item -path $path_sankhuu -Destination 'D:\' -Recurse
}

#----------------------- exe file replace  --------------# 
if($chec_SYS -eq '0'){
    Copy-Item -Path $path_retail_host -Destination 'D:\retail 6.0\' 
    Copy-Item -Path $path_sankhuu_host -Destination 'D:\sankhuu 6.0\'
}
#----------------------shortcut path ------------------------#
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
$Desktop_retial = $DesktopPath + '\Retial 6.0.lnk'
$Desktop_sankhuu = $DesktopPath + '\Sankhuu 6.0.lnk'
$file_path_retail = 'D:\retail 6.0\Retail.exe'
$file_path_sankhuu = 'D:\sankhuu 6.0\ERP-Sankhuu.exe'
$retail_directory = "D:\retail 6.0"
$sankhuu_directory = "D:\sankhuu 6.0"
$DesktopLink = $DesktopPath + '\*.lnk'
#Remove-Item $DesktopLink
function set-shortcut {
    param ( [string]$SourceLnk, [string]$DestinationPath, [string]$directory )
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut($SourceLnk)
        $Shortcut.TargetPath = $DestinationPath
        #$Shortcut.IconLocation = "C:\myicon.ico"
        #$Shortcut.TargetPath = "http://www.microsoft.com"
        $Shortcut.Hotkey = "CTRL+ALT+F"
        $Shortcut.WorkingDirectory = $directory
        $Shortcut.Save()
}

set-shortcut $Desktop_retial $file_path_retail $retail_directory
set-shortcut $Desktop_sankhuu $file_path_sankhuu $sankhuu_directory

#-----------------------------registry startup --------------------------#

New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name '6.0retail' -Value 'D:\6checker.exe' -PropertyType "String"
#New-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name '6.0retail' -Value 'D:\6checker.exe' -PropertyType "String"
Pop-Location

exit 
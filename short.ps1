#DestinationPath
$retail_path = 'D:\retail 6.0\Retail.exe'
$anydesk_path = 'D:\retail 6.0\AnyDesk.exe'
$teamviewer_path = 'D:\retail 6.0\TeamViewerQSv2.exe'
$sankhuu_path = 'D:\sankhuu 6.0\ERP-Sankhuu.exe'
$diamond = "C:\Program Files\Interactive Systems\Diamond\Diamond.exe"
$store = "C:\Program Files\Interactive Systems\Storemanagement\Storemanagement.exe" 
#shortcut path
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
$teamviewer_link = $DesktopPath + '\TeamViewer Support.lnk'
$Diamond_Desktop = $DesktopPath + '\Diamond.lnk'
$anydesk_link = $DesktopPath + '\AnyDesk.lnk'
$sankhuu_link = $DesktopPath + '\Sankhuu 6.0.lnk'
$Desktop_Store = $DesktopPath + '\Storemanagement.lnk'
$retail_link = $DesktopPath + '\Diamond Retail.lnk'
#directory
$retail_directory = 'D:\retail 6.0'  #anydesk , teamviewer
$sankhuu_direct = 'D:\sankhuu 6.0'
$Desktop_Diamond_directory = "C:\Program Files\Interactive Systems\Diamond"
$Desktop_store_direc = "C:\Program Files\Interactive Systems\Storemanagement"


function set-shortcut {
    param ( [string]$SourceLnk, [string]$DestinationPath , [string]$directory)
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut($SourceLnk)
        $Shortcut.TargetPath = $DestinationPath
        #$Shortcut.IconLocation = "C:\myicon.ico"
        #$Shortcut.TargetPath = "http://www.microsoft.com"
        $Shortcut.Hotkey = "CTRL+ALT+F"
        $Shortcut.WorkingDirectory = $directory #"D:\retail 6.0"
        $Shortcut.Save()
}

set-shortcut $Diamond_Desktop $diamond $Desktop_Diamond_directory
set-shortcut $Desktop_Store $store $Desktop_store_direc
set-shortcut $retail_link $retail_path $retail_directory
set-shortcut $sankhuu_link $sankhuu_path $sankhuu_direct
set-shortcut $teamviewer_link $teamviewer_path $retail_directory
set-shortcut $anydesk_link $anydesk_path $retail_directory
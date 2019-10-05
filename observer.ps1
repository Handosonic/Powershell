$starting_text = 4
$global:source_process = @()
$global:program_files = @()
$global:program_filesx86 = @()
$global:count = 0 
cd C:\
mkdir DataZ
$Current_User_Path = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)
#-------------------Getting Folder information ---------------------------#
Get-Process | Format-Table Name > process.txt
    
    ls 'C:\' -name | out-file -FilePath C:\DataZ\c_disk.txt
    Get-Content DataZ\c_disk.txt | Measure-Object -line | Out-file -FilePath DataZ\c_diskV.txt
    $folder_value1 = (get-Content DataZ\c_diskV.txt -TotalCount 4)[3][3]
    $folder_value2 = (get-Content DataZ\c_diskV.txt -TotalCount 4)[3][4]
    $c_disk_length = $folder_value1 + $folder_value2
        $c_disk_info = get-Content -path .\DataZ\c_disk.txt

    ls 'C:\program Files' -name | Out-File -FilePath C:\DataZ\folder.txt
    Get-Content DataZ\folder.txt | Measure-Object -Line | Out-File -FilePath DataZ\folderV.txt
    $folder_value1 = (get-Content DataZ\folderV.txt -TotalCount 4)[3][3]
    $folder_value2 = (get-Content DataZ\folderV.txt -TotalCount 4)[3][4]
    $folder_length = $folder_value1 + $folder_value2
        $program_files = Get-Content -Path .\DataZ\folder.txt

    ls 'C:\program Files (x86)' -name | Out-File -FilePath C:\DataZ\folderx86.txt
    Get-Content C:\DataZ\folderx86.txt | Measure-Object -Line | Out-File -FilePath C:\DataZ\folderx86V.txt
       #$folder_value1 = (get-Content C:\DataZ\folderx86V.txt -TotalCount 4)[3][3]
       #$folder_value2 = (get-Content C:\DataZ\folderx86V.txt -TotalCount 4)[3][4]
       #$folder_length_x86 = $folder_value1 + $folder_value2
       #$endms = (get-Date).Millisecond
        $program_filesx86 = Get-Content -Path C:\DataZ\folderx86.txt
        $program_length = $program_filesx86.count
#LocalApp   
    $LocalApp = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::LocalApplicationData)
    ls $LocalApp -name | Out-File -FilePath C:\DataZ\LocalApp.txt
        $LocalAppData = Get-Content -Path C:\DataZ\LocalApp.txt
        $LocalApp_length = $LocalAppData.count
#ProgramData
    ls 'C:\ProgramData' -name | Out-File -FilePath C:\DataZ\ProgramData.txt
        $Programdata = Get-Content -Path C:\DataZ\ProgramData.txt
        $programdata_length = $Programdata.count
#LocalLow  
    $LocalLow = $Current_User_Path + '\AppData\LocalLow'
    ls $LocalLow -name | Out-File -FilePath C:\DataZ\LocalLow
        $LocalLow = Get-Content -Path C:\DataZ\LocalLow
        $LocalLow_length = $LocalLow.count
#Roaming
    $Roaming = $Current_User_Path + '\AppData\Roaming'
    ls $Roaming -name | Out-File -FilePath C:\DataZ\Roaming
        $Roaming = Get-Content -Path C:\DataZ\Roaming
        $Roaming_length = $Roaming.count

#--------------------- Getting Registry Information ----------------------------#

function First_Reg(){
    regedit /e C:\DataZ\ControlP.reg  'HKEY_CURRENT_USER\Control Panel'
    regedit /e C:\DataZ\System.reg 'HKEY_CURRENT_USER\System'
    regedit /e C:\DataZ\Software.reg 'HKEY_CURRNET_USER\Software'
    regedit /e C:\DataZ\BCD.reg 'HKEY_LOCAL_MACHINE\BCD00000000'
    regedit /e C:\DataZ\Hardware.reg 'HKEY_LOCAL_MACHINE\HARDWARE'
    regedit /e C:\DataZ\Software.reg 'HKEY_LOCAL_MACHINE\SOFTWARE'
    regedit /e C:\DataZ\System.reg   'HKEY_LOCAL_MACHINE\SYSTEM'
    regedit /e C:\DataZ\Root.reg 'HKEY_CLASSES_ROOT'
}

function died_process(){
    
}
#regedit /s/q C:\DataZ\soft.reg
First_Reg

#-------------------Getting Background Service Information ----------------------#

function getting_service{
    $serv = Get-WmiObject Win32_Service | Select-Object -ExpandProperty Name
    $serv
}
$service_generation = getting_service




#--------------------------------------------------------------------------------------#
function text_length($text_name) {
    $count = 1
    for($s=0 ; $s -eq 0; ){
        $s1 = (Get-Content C:\folder.txt -TotalCount 1000)[$count][0]
        Write-Output $s1
        if($s1 -eq $null){
            break
        }else{
            $count = $count + 1
        }
    }
    return $count
}

$length_source = text_length(".\process.txt")

function get_process() {
    $array_counter = 0
    $temp_count = $starting_text + 1
    #[System.Collections.ArrayList]$source_process = $source
    for($i=3 ; $i -le $length_source-1; $i++ ){
        $temp_word = ""
        for($j=0; $j -le 35; $j++){
            $temp = (Get-Content .\process.txt -TotalCount $temp_count)[$i][$j]
            if($temp -eq $null){
                if($array_counter -eq 0){
                    $source_process = $source_process + $temp_word
                    $array_counter++;
                    break 
                }
                if($source_process[$array_counter-1] -eq $temp_word){
                    break
                }
                $source_process = $source_process + $temp_word
                $array_counter++;
                break
            }              
            $temp_word = $temp_word + "" + $temp
        }
        $temp_count++;  
    }
    $source_process 
}


$source_process = get_process
$source_process


$d = $source2 | Where {$source_process -notcontains $_}
#Set-Service -Name wuauserv -StartupType Disabled
#Stop-Service -Name "Windows Update"
#$Get-ChildItem -Recurse | ?{ $_.PSIsContainer } | Select-Object FullName


    for($a=1 ; $a -eq 1; ){
        $cycle_time = 1

        $hour = Get-Date -Format "HH"
        $minute = Get-Date -Format "mm"
        Write-Output 'Hello'
        Start-Sleep -Seconds $cycle_time

        Stop-Process -Name notepad
    }
    
#}
Start-Sleep -Seconds 10
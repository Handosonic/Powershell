$starting_text = 4
$global:source_process = @()
$global:count = 0 
Get-Process | Format-Table Name > process.txt
ls 'C:\Program Files\' -name | Out-File -FilePath C:\folder.txt
Get-Content .\folder.txt | Measure-Object -Line | Out-File -FilePath C:\folderV.txt
#-----------------------------------------------------------------------#

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
$length_folder = text_length(".\folder.txt")

$length_source = text_length(".\process.txt")

$length_folderx = text_length(".\folderx86.txt")


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
function get_folders() {
    
    $get_program = @()
    $array_counter = 0
    $temp_count = 1
    for($i=3 ; $i -le $length_source-1; $i++ ){
        $temp_word = ""
        for($j=0; $j -le 35; $j++){
            $temp = (Get-Content .\folder.txt -TotalCount $temp_count)[$i][$j]
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





$d = $source2 | Where {$source_process -notcontains $_}
#Set-Service -Name wuauserv -StartupType Disabled
#Stop-Service -Name "Windows Update"
#$Get-ChildItem -Recurse | ?{ $_.PSIsContainer } | Select-Object FullName






    for($a=1 ; $a -eq 1;  ){
        $cycle_time = 1

        $hour = Get-Date -Format "HH"
        $minute = Get-Date -Format "mm"
        Write-Output 'Hello'
        Start-Sleep -Seconds $cycle_time

        Stop-Process -Name notepad
    }
    
#}
Start-Sleep -Seconds 10
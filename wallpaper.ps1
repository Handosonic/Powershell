$a = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path $a
New-Item -Path 'C:\test\' -ItemType Directory
Copy-Item -Path .\wallpaper\* -Destination C:\test\
$random = Get-Random -Minimum 1 -Maximum 11
$waiting_time = 2
if($random -eq 1){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\andes_mountains-wallpaper-2560x1440.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif ($random -eq 2) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\branch_flowers_leaves_144881_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 3 ){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\flower_stem_sunset_135795_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 4){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\flower_sun_sunset_144789_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 5){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\germany_cochem_mosel_river_castle_104431_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 6){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\horses_art_night_129683_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 7){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\pacific_ocean_from_space-wallpaper-2560x1440.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 8){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\autumn_drawing_walking_82963_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 9){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\deer_forest_night_130294_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}elseif($random -eq 10){
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallPaper -Value C:\test\river_home_art_128746_1920x1080.jpg
    Start-Sleep -Seconds $waiting_time
    #RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,$false
}
$a = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location -Path $a
cscript refresh_background.vbs -Verb RunAs
#Remove-Item -Path 'C:\test\' -Recurse


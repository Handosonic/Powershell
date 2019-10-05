for($a=1 ; $a -eq 1;  ){
        $cycle_time = 2
        $hour = Get-Date -Format "HH"
        $minute = Get-Date -Format "mm"
        Write-Output 'Hello'
        Start-Sleep -Seconds $cycle_time

        kill -Name notepad
        
        }
        
        pause
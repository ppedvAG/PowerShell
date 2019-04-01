1..20 | ForEach-Object { 
        Write-Progress -Activity Arbeite -Status "Arbeite an der $_. Aufgabe" -PercentComplete ($_/30*100)
        $_ 
    } | ForEach-Object {Start-Sleep -Milliseconds 200 }
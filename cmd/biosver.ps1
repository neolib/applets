function Sleep-Seconds([float]$seconds)
{
    Write-Host -NoNewline "Exiting in $seconds seconds"
    for ($i = 0; $i -lt [math]::Floor($seconds); $i++)
    {
        Start-Sleep 1
        Write-Host -NoNewline .
    }
    $ms = $seconds % 1 * 1000
    if ($ms -gt 0 )
    {
        Start-Sleep -m $ms
        if ($ms -ge 333)
        {
            Write-Host -NoNewline .
        }
    }
}

Get-WmiObject win32_bios
if ($psISE -eq $null) { Sleep-Seconds 3 }


param ($pctSpaceThreshold)
[array]$array = Get-WmiObject Win32_LogicalDisk

echo "Unidades de almacenamiento con mas de $pctSpaceThreshold% de espacio libre`n"
foreach ($element in $array) {
    if ($element.Size -gt 0){
        $pctFreeSpace=[Math]::Round(($element.FreeSpace/$element.Size)*100)
        if ($pctFreeSpace -ge $pctSpaceThreshold){

            echo "DeviceID: $($element.DeviceID)"
            echo "FreeSpace: $([Math]::Round($element.FreeSpace/1GB))GB" 
            echo "Size: $([Math]::Round($element.Size/1GB))GB" 
        }
    }
} 
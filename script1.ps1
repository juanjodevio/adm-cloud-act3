[array]$array = @(Get-ChildItem -Path '.\*.*') | select -expand fullname

foreach ($element in $array) {
    If ((Get-Item $element).length -gt 1KB) { echo $element }
} 
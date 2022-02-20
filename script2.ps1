[array]$array = @(Get-ChildItem -Path '.\*.jpg') | select -expand fullname

foreach ($element in $array) {
    $formatedDate = $(Get-Date -Format "yyyyMMdd")
    $filename=$(Get-Item $element).Name
    $newFileName=$formatedDate+"_"+$filename
    Rename-Item -Path $element -NewName $newFileName
    echo "$filename changed to $newFileName"
} 
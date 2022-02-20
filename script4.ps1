
while ($op -ne "5") {
    echo "Menu:`n`n1. Listar los servicios arrancados.`n2. Mostrar la fecha del sistema.`n3. Ejecutar el Bloc de notas.`n4. Ejecutar la Calculadora.`n5. Salir."
    $op = Read-Host  "Ingrese una opcion"
    if ($op -notin "1", "2", "3", "4", "5") { echo "<<La opcion ingresada no es correcta>>`n" }
    if ($op -eq "1") {
        $services = $(Get-Service | Where-Object { $_.Status -eq "Running" })

        foreach ($service in $services) {
            echo $service
        }
        Exit
    }
    if ($op -eq "2"){
        echo "La fecha del sistema es: $(Get-Date)"
        Exit
    }
    if ($op -eq "3"){
        Notepad | Out-Null
        Write-Host "Se cerro el bloc de notas."
        Exit
    }
    if ($op -eq "4"){
        Calc | Out-Null
        Write-Host "Se cerro la calculadora."
        Exit
    }
}
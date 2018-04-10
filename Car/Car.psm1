# Load class
# $PSScriptRoot/Classes/Car.ps1

function New-Car {
    [cmdletbinding()]
    param(
        [string]$Manufacturer = 'Toyota',
        [string]$Model = 'Corolla',
        [int]$Year = 2018
    )
    $car = [Car]::new()
    $car.Manufacturer = $Manufacturer
    $car.Model = $Model
    $car.Year = $Year
    $car
}

Export-ModuleMember -Function New-Car
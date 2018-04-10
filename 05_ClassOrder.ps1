<#
Scenario: Loading classes in order
#>

class Car {
    [string]$Model = 'Corolla'
}

class Tesla : Car {
    [string]$Model = 'Roadster'
}


[Car]::new()
[Tesla]::new()












<#
Dragon: Order matters!
Extra work must be done if you want to use one class per file method
#>

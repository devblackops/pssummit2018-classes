
# Scenario: Loading classes in order

class Tesla : Car {
    [string]$Model = 'Roadster'
}

class Car {
    [string]$Model = 'Corolla'
}

[Car]::new()
[Tesla]::new()

# Dragon: Order matters!
# Extra work must be done if you want to use one class per file method
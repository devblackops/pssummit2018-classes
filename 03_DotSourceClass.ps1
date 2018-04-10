<#
Scenario: Import a module that uses dot sourced classes
<Inspect Car module>
#>

Import-Module ./Car -Verbose
$c = New-Car
$c | Get-Member











<#
Classes are exposed if returned from a module function
This works around using class directly with [Car]::new() but...

Dragon: This works but beware. You'll see later
#>

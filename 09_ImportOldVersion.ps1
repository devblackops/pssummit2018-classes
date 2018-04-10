<#
Scenario: Load the latest module version using "using module"
#>

# Run me first!
#<restart session>
$env:PSModulePath += ":$((pwd).path)"
$VerbosePreference = 'Continue'

Get-Module Fruit -ListAvailable
using module Fruit
Get-Module Fruit










<#
Scenario: Load an older module version using "using module"
#>

#<restart session>
$env:PSModulePath += ":$((pwd).path)"
$VerbosePreference = 'Continue'

using module @{ModuleName = 'Fruit'; ModuleVersion = '1.0.0' }
Get-Module Fruit











<#
Dragon: It loaded the latest version, not the one we specified!

Module specification doesn't seem to work
#>

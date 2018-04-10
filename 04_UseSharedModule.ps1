<#
Scenario: Inheriting from classes in another module

<inspect Tesla module>
#>
$env:PSModulePath += ":$(($pwd).Path)"
Import-Module Tesla -Verbose












<#
Dragon: Tesla is using RequiredModules which doesn't expose the classes
Same problem as scenario 1
#>








<#
Scenario: Change Tesla module from hard to soft dependency on Car module and try again
#>

#<restart PS session>
#<using module Car>
#<remove RequiredModules>
$env:PSModulePath += ":$((pwd).Path)"
Import-Module Tesla -Verbose










<#
Dragon: This is problematic
Same problem as scenario 3, classes must be in PSM1 and NOT dot sourced
Go back to Car module and put class in PSM1
#>












<#
Scenario: Can we have a hard dependecy via RequiredModules AND use a class in the PSM1?
#>

#<restart PS session>
$env:PSModulePath += ":$((pwd).Path)"
Import-Module Tesla -Verbose












<#
Dragon: RequiredModules doesn't using "using module". Same problem as scenario 1
#>











<#
Scenario: Soft dependency on Car module with "using module"
#>

#<restart PS session>
$env:PSModulePath += ":$((pwd).Path)"
Import-Module Tesla -Verbose
New-Car
New-Tesla











<#
Dragon: This works but yuck. We've lost our hard dependency on Car so operations like
installing from PSGallery won't install the required module because PSGallery doesn't
know about it
#>

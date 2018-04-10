<#
Scenario: Try to use a class directly by importing module
#>
Import-Module ./MyClass1
[Foo]::new()
















<#
Dragon: Import-Module DOES NOT expose classes from module
#>
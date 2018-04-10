<#
Scenario: Try to use a class with "using module ..."
#>
# 
using module ./MyClass1
[Foo]::new()

Get-Module MyClass1











<#
Dragon: This works, but there are issues with "using module" we'll see later
#>

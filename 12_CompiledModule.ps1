
# Scenario: "Compiling" a module into single PSM1

cd ./ComplexModule
./build.ps1
Import-Module ./bin/0.1.0/ComplexModule.psd1 -Verbose
New-Planet
[earth]::new() #nope

# restart session
#using module ./bin/0.1.0/ComplexModule.psd1
[earth]::new()
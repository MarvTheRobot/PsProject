<#
.SYNOPSIS
    A simple function using '%' instead of 'foreach-object'
.DESCRIPTION
    A simple function using '%' instead of 'foreach-object'

    Used to test PsScriptAnalyzer when finding warnings
.EXAMPLE
    PS C:\> Test-ScriptAnalyzer
    
    stuff
    things
    items

.INPUTS
    <None>
.OUTPUTS
    [string[]]
.NOTES
    Completely pointless
#>
function Test-ScriptAnalyzer {
    "stuff", "things", "items" | % {
        $_
    }
}
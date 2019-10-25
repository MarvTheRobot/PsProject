<#
.SYNOPSIS
    An example of a public function calling a private function
.DESCRIPTION
    An example of a public function calling a private function

    Public function should be able to get information from private function
    Private function should not be available
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
function Get-PublicCallingPrivateFunction {
    Get-PrivateFunction
}

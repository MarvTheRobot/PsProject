<#
.SYNOPSIS
    Example of a private function
.DESCRIPTION
    Example of a private function

    By itself is no different from public, but will be tested in module tests
     to ensure that it is unavailable from 'the outside'
.EXAMPLE
    PS C:\> Get-PrivateFunction
    
    Get-PrivateFunction : The term 'Get-PrivateFunction' is not recognized as the name of a cmdlet, function, script file, or operable program.
        Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
        At line:1 char:1
    + Get-PrivateFunction
    + ~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (Get-PrivateFunction:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
    
.NOTES
    General notes
#>
function Get-PrivateFunction {
    write-output "privately useful"
}

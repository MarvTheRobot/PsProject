@{
    PSDependOptions = @{
        Target = "../lib" # I want all my dependencies installed here
        AddToPath = $True            # I want to prepend project to $ENV:Path and $ENV:PSModulePath
    }

    # Grab some modules
    #'PowerShellGet'    = '2.2.1'
    'Psake'            = 'latest'
    #'PlatyPs'          = 'latest'
    'PSScriptAnalyzer' = 'latest'
    'Pester'           = 'latest'
    'BuildHelpers'     = 'latest'
}
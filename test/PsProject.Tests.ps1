param(
    [Parameter(Mandatory=$false)]
    [ValidateScript({
        Test-Path $_
    })]
    [string]$ModuleOutput = '../BuildOutput'
)

$moduleName = (Get-Item $MyInvocation.MyCommand.Path).BaseName -replace ('.Tests','')
$delim = [IO.Path]::PathSeparator

Describe "Module - Initialising Tests" {
    BeforeEach {
        if($Env:PSModulePath -notmatch $moduleOutput){
            $Env:PSModulePath = "$($moduleOutput)$($delim)$($Env:PSModulePath)"      
        } 
    }
    
    It "Env:PSModulePath should contain ModuleOutput value" {
        $Env:PSModulePath | Should -Match $moduleOutput
    }

    It "ModuleOutput should contain a folder called <$moduleName>" {
        $modulePath   = Join-Path $moduleOutput $moduleName
        $moduleFolder = Get-Item -Path $modulePath
        $moduleFolder | should -Exist
        $moduleFolder.Name | should -Be "$moduleName"
    }
}


$Env:PSModulePath = "$($moduleOutput)$($delim)$($Env:PSModulePath)"  
Import-Module $moduleName -Verbose

InModuleScope $moduleName {
    Describe 'Module - Testing $moduleName Specification' {
        It 'Tests the Private function' {
            Get-PrivateFunction | Should -Be 'privately useful'
        }
         
        $testCases = @(
            @{Function = 'Get-PublicFunction'}       
            @{Function = 'Get-PublicCallingPrivateFunction'}       
            @{Function = 'Test-ScriptAnalyzer'}       
        )
        It "should expose <function>" -TestCases $testCases {
            param($function)
            $cmd = Get-Command $function -Module $moduleName  
            $cmd | Should -BeOfType [System.Management.Automation.CommandInfo]
        }

    }
}
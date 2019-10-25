$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Unit - public function Get-PublicCallingPrivateFunction" {
    . "$here\..\private\Get-PrivateFunction.ps1"
    $mockProperty = 'mocks are useful'
    Mock Get-PrivateFunction {return $mockProperty}

    It "can access information from the private function" {
        Get-PublicCallingPrivateFunction | Should -Be $mockProperty
    }

    It "calls into the private function" {
        Assert-MockCalled -CommandName Get-PrivateFunction -Times 1
    }
}

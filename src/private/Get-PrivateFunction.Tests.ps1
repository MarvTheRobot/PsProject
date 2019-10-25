$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Unit - private function Get-PrivateFunction" {
    It "does something useful" {
        Get-PrivateFunction | Should -Be "privately useful"
    }
}

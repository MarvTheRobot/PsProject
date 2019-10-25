$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Unit - public function Get-PublicFunction" {
    It "does something useful" {
        Get-PublicFunction | Should -Be "publicly useful"
    }
}

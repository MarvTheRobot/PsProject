$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Unit - public function Test-ScriptAnalyzer" {
    It "does something useful" {
        Test-ScriptAnalyzer | Should Be 'stuff', 'things','items'
    }
}

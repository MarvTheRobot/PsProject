$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Unit - class PsProject.Class" {
    It "correctly initialises" {
        $testObject = New-Object PsProject -ArgumentList 'Updated public text', 'Updated hidden text'

        [PsProject]::StaticProperty | Should -be 'Static Property'
        $testObject.PublicProperty | Should -be 'Updated public text'
        $testObject.HiddenProperty | Should -be 'Updated hidden text'
    }
}

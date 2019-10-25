<#
.SYNOPSIS
    Example PowerShell Class
.DESCRIPTION
    Example PowerShell Class

    Used to show a 'very' simple class and associated test
.EXAMPLE
    PS C:\> $testObj = New-Object PsProject
    PS C:\> $testObj.Property

    Example Default Text
    
    PS C:\> $testObj.Property = 'New Property'
    PS C:\> $testObj.Property

    New Property
#>
class PsProject {
    [string]$PublicProperty = 'Public property'
    static [string]$StaticProperty = 'Static Property'
    hidden [string]$HiddenProperty = 'Hidden Property'

    [string] getStaticProperty() {
        return [PsProject]::StaticProperty
    }
    [string] getHiddenProperty() {
        return $this.HiddenProperty
    }

    PsProject () {}

    PsProject ([string] $PublicText, [string] $HiddenText)
    {
        $this.PublicProperty = $PublicText
        $this.HiddenProperty = $HiddenText
    }
}
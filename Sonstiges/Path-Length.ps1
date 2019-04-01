[CmdletBinding()]

Param(
    [Parameter(Mandatory=$True, Position=0)]
    [String]$Path,

    [int]$Limit = 10
)

Get-ChildItem $Path -Recurse `| Select-Object -Property FullName, @{n='Pfadlänge'; e={$_.FullName.length}} `| Sort-Object Pfadlänge -Descending | Select-Object -First $Limit
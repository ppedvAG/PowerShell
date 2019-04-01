[CmdletBinding()]

Param(
    [Parameter(Mandatory=$True, Position=0)]
    [String]$Path
)

Write-Host "Pfadlänge: " (Get-ChildItem $Path).FullName.length
﻿[CmdletBinding()]

Param(
    [Parameter(Mandatory=$True, Position=0)]
    [String]$Path,

    [int]$Limit = 10
)

Get-ChildItem $Path -Recurse `
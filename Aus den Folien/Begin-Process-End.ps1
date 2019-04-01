	Function Test-Demo
{
	[cmdletbinding()]

  Param (
  	[parameter(ValueFromPipeline=$True)]
	[string[]]$InputObj,
  
	[String]$Param1
  )
  Begin
  {
    Write-Host "Start"
  }
  Process
  { 
    echo "Verarbeite $InputObj mit $Param1" #Statt $InputObj kann auch $_ verwendet werden
  }
  End
  {
    echo "Ende"
  }
}

"Objekt1", "Objekt2" | Test-Demo -Param1 Parameter
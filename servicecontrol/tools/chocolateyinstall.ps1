# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/Particular/ServiceControl/releases/download/3.1.2/Particular.ServiceControl-3.1.2.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Particular Software ServiceControl Management'
  checksum64     = '26E3B9E75057F216B274FA4FD958A480544F74EA5464D938081442CCCBBAEECA'
  checksumType64 = 'sha256'
  silentArgs     = "/quiet /norestart /LV* `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
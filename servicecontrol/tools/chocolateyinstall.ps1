# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/Particular/ServiceControl/releases/download/3.2.1/Particular.ServiceControl-3.2.1.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Particular Software ServiceControl Management'
  checksum64     = 'C41FF76A0707BA1F727CA5411A1774DB762C88120FA5CE3FE685A8E53065E41E'
  checksumType64 = 'sha256'
  silentArgs     = "/quiet /norestart /LV* `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
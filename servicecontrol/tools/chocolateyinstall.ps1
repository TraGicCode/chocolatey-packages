# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceControl/releases/download/4.27.4/Particular.ServiceControl-4.27.4.exe'
$checksum64 = 'f1816c06ef2d3192428d99dedd88285d8f077b5557843dfe0b4c39386b2b8ddf'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  softwareName   = 'Particular Software ServiceControl Management'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = "/quiet /norestart /LV* `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

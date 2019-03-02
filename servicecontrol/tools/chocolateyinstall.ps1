# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceControl/releases/download/3.6.6/Particular.ServiceControl-3.6.6.exe'
$checksum64 = 'e72d4eb523933c841b80949e84c6c9c4d49047e4b5da32fb25880e86923fe72d'

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

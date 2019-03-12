# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceControl/releases/download/3.6.7/Particular.ServiceControl-3.6.7.exe'
$checksum64 = '9f06fbf776ef31b1ed8dc1774aa99c7eb67de458e0ac84f5190dc75368a6e811'

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

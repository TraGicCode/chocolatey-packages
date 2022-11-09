# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceControl/releases/download/4.26.0/Particular.ServiceControl-4.26.0.exe'
$checksum64 = '6fa2199c55b28cab611017eb25e5138282ab8d20da41ae45ad5883587dee6fdf'

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

# https://docs.particular.net/servicecontrol/installation-silent

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceControl/releases/download/3.3.1/Particular.ServiceControl-3.3.1.exe'
$checksum64 = '05f9401e2af5ae0cf55f2ed418edda760e142b13bade6c1baf6897c2e2f0baf5'

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

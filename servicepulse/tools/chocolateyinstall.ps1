$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServicePulse/releases/download/1.19.0/Particular.ServicePulse-1.19.0.exe'
$checksum64 = 'd97a5393fea83b83278d76d79035cea3abd8181abf8a8332c8e7f288836d8f72'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = "/quiet /norestart /LV* `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServicePulse/releases/download/1.39.0/Particular.ServicePulse-1.39.0.exe'
$checksum64 = 'f9cd69600f2c817910c6b069e13edffda4ca68b7f6d78668c47a882df2d82b4e'

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

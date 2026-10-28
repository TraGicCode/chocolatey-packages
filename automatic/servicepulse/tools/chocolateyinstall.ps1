$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServicePulse/releases/download/2.13.0/Particular.ServicePulse-2.13.0.exe'
$checksum64 = '0bf5b9ee71129d12d6555e925214d77f4e30865da1ced5cf126f6e7625c67d94'

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

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServicePulse/releases/download/1.37.1/Particular.ServicePulse-1.37.1.exe'
$checksum64 = '28906bbb9a6c1be2bc845f45cd26e8058b97df33991697fb2ca8b75a2d63ba28'

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

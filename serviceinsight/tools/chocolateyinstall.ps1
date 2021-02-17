$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceInsight/releases/download/2.6.0/ServiceInsight-2.6.0.exe'
$checksum64 = 'bebda30e391ab792d029b4b40e2db1917af1295e7a6420f530014a71ef8b4d83'

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

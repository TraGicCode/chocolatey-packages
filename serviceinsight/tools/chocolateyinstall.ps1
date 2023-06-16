$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceInsight/releases/download/2.13.0/ServiceInsight-2.13.0.exe'
$checksum64 = '5349bece1e5de974990c801bb47403075f2c6091304e85b2d5df3d4dde191234'

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

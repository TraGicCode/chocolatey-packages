$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceInsight/releases/download/2.12.0/ServiceInsight-2.12.0.exe'
$checksum64 = 'b34fdba8d1712642db457050214f03b66524b287a988847a4c278b0c27ac6563'

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

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceInsight/releases/download/2.3.0/ServiceInsight-2.3.0.exe'
$checksum64 = 'de0450e522a6ff25eef97f0386b837a009a3f4667ee99c0e608522cf9128f417'

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

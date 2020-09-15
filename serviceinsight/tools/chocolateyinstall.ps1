$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServiceInsight/releases/download/2.2.0/ServiceInsight-2.2.0.exe'
$checksum64 = '12a20235fb901f7606a32e6200114dc0419a6a2505b2a510970b73c2cb965f80'

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

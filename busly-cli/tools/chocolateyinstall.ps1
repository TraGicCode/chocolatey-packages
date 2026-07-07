$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/TraGicCode/busly-cli/releases/download/v0.64.17/busly-cli-v0.64.17-win-x64.zip'
$checksum64 = '6a247c021b281912e7bafb320750cc64933b3e0bc14e450c7b6b3f90134ad305'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

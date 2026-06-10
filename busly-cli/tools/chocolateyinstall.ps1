$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/TraGicCode/busly-cli/releases/download/v0.64.10/busly-cli-v0.64.10-win-x64.zip'
$checksum64 = '73733bf916b9ebe57205b5fa04598b2406b351841c1bb662797f2e78e1731d81'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

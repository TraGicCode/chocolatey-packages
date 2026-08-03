$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/TraGicCode/busly-cli/releases/download/v0.64.20/busly-cli-v0.64.20-win-x64.zip'
$checksum64 = '710eb37ffacedb9360f56eeffdd8a2e9b2d99766aa2c905a47951d462ede372e'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

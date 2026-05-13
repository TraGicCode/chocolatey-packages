$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/TraGicCode/busly-cli/releases/download/v0.64.1/busly-cli-v0.64.1-win-x64.zip'
$checksum64 = 'a38efb78f1ef3996fb92bdda0db2f6c8f800ea29927b2b06c39374fff385c1f0'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

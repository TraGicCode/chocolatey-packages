$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/TraGicCode/busly-cli/releases/download/v0.60.0/busly-cli-v0.60.0-win-x64.zip'
$checksum64 = 'b8b45603566512f4166e380deaf715f6f5e041478507f97c3ee839979afb865e'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

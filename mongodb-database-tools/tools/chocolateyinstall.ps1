$ErrorActionPreference = 'Stop'

$url64bit   = 'https://fastdl.mongodb.org/tools/db/mongodb-database-tools-windows-x86_64-100.4.0.zip'
$checksum64 = 'dce203ba98bae5d6b854e77551d96f164398c4e41a89b676f1ccd691f3b76c92'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

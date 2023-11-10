$ErrorActionPreference = 'Stop'

$url64bit   = 'https://fastdl.mongodb.org/tools/db/mongodb-database-tools-windows-x86_64-100.9.1.zip'
$checksum64 = '57e4591693076b2a7feb9a07b7a155d9181e24f42e16ddf6b5eccbba98e30427'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

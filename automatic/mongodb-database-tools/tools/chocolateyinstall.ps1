$ErrorActionPreference = 'Stop'

$url64bit   = 'https://fastdl.mongodb.org/tools/db/mongodb-database-tools-windows-x86_64-100.18.0.zip'
$checksum64 = 'FEB29EED9788B1DA2FB6F7AE63909AC790A6FE3A363947E68590F048BED08EDB'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

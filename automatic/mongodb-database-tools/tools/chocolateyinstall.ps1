$ErrorActionPreference = 'Stop'

$url64bit   = 'https://fastdl.mongodb.org/tools/db/mongodb-database-tools-windows-x86_64-100.20.0.zip'
$checksum64 = 'b65a32595db38cdf0f413d53cac440c4a6ddac0d224405b550e4100535bdd5ca'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

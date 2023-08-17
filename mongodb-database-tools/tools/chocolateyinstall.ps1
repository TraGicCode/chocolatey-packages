$ErrorActionPreference = 'Stop'

$url64bit   = 'https://fastdl.mongodb.org/tools/db/mongodb-database-tools-windows-x86_64-100.8.0.zip'
$checksum64 = '083eb156b3b8d3a2515a7f062cb3c29acbd679c0d412f7d67cc0616e2f4625e6'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

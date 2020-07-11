$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/mongosh/releases/download/v0.0.7/mongosh-0.0.7-win32.zip'
$checksum64 = '6DC76A61A169D951D8BDBC606BAEFF8BD153D1738F3E3D53C9D7D02F986D2F72'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/dependabot/cli/releases/download/v1.88.0/dependabot-v1.88.0-windows-amd64.zip'
$checksum64 = '1b6e278a62132e435c4d536e00ee9883ac338206e1d9176ba64718e90810f2f6'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

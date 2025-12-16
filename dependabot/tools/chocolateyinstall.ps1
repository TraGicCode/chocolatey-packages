$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/dependabot/cli/releases/download/v1.80.0/dependabot-v1.80.0-windows-amd64.zip.md5'
$checksum64 = '18b2326f9645d330611961fa8d3be16c11005b725e0ff9664aaaf4e77c2c85aa'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

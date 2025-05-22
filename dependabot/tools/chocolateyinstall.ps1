$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/dependabot/cli/releases/download/v1.65.0/dependabot-v1.65.0-windows-amd64.zip.md5'
$checksum64 = '9c0785907c0ee6f3fd5c4d3ebc78c2b81ac5c34793a73ee3cb24f5848b00d7cd'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

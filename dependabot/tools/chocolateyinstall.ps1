$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/dependabot/cli/releases/download/v1.86.0/dependabot-v1.86.0-windows-amd64.zip'
$checksum64 = 'bd529e756a10f3175b8f5f66851dd12763a97a33f93e7cdcbe32346189871e11'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

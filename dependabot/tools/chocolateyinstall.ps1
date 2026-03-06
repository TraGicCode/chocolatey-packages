$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/dependabot/cli/releases/download/v1.83.1/dependabot-v1.83.1-windows-amd64.zip.md5'
$checksum64 = 'd150d855478a46289109c28070cd7ee3ccd2669b5499632d6d6cf127379b138e'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

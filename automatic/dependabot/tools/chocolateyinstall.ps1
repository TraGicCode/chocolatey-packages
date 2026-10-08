$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/dependabot/cli/releases/download/v1.94.0/dependabot-v1.94.0-windows-amd64.zip'
$checksum64 = '62661bdbc43558ab517ebf37360e1a488d78459305725a6020142bdc4c9f0ce6'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

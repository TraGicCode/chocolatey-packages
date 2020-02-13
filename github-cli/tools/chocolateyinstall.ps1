$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64bit   = 'https://github.com/cli/cli/releases/download/v0.5.4/gh_0.5.4_windows_amd64.zip'
$checksum64 = '129ACA30B010BB89A32424B82B6468ACAAA559588F952819BA8C91237FA18326'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

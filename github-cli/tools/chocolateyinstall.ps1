$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64bit   = 'https://github.com/cli/cli/releases/download/v0.5.4/gh_0.5.4_windows_amd64.zip'
$checksum64 = '129aca30b010bb89a32424b82b6468acaaa559588f952819ba8c91237fa18326'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

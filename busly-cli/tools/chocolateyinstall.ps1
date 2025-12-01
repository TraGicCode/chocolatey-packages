$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/TraGicCode/busly-cli/releases/download/v0.24.0/busly-cli-v0.24.0-win-x64.zip'
$checksum64 = '2744b179a3fbebb9446d5212b9ac709ee2c6807273b4c691a2343c15c581114f'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name 'busly' -Path (Join-Path -Path $toolsdir -ChildPath 'BuslyCLI.Console.exe')

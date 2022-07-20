$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.4/mongodb-compass-readonly-1.32.4-win32-x64.msi'
$checksum64 = '90f80815c02c8704ce806c1df4492ed325bb1ea58fe0916defc54b4486486a5b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

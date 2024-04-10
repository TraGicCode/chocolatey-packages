$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.5/mongodb-compass-1.42.5-win32-x64.msi'
$checksum64 = '76d98ebb85b538d6bb46f519b71dfea9e4343c8f781baac162443f5f24af2828'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

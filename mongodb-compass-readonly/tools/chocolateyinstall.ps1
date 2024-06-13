$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.1/mongodb-compass-readonly-1.43.1-win32-x64.msi'
$checksum64 = '73f7711f57fde7718b23e9f24c7c770761e30f4dfe1a4a24a9ef7cb1ce72938f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

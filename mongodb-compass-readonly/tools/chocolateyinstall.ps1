$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.4/mongodb-compass-readonly-1.43.4-win32-x64.msi'
$checksum64 = '67c0b5f4534bf81f356f8f793eabf05d12c6bce76b01f58447f72c14e6467e3f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

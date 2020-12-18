$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.24.6/mongodb-compass-isolated-1.24.6-win32-x64.msi'
$checksum64 = '954e31a5eae22a3e7c170740cb732320ea4087bde81f2c4de91b816e0567cb95'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

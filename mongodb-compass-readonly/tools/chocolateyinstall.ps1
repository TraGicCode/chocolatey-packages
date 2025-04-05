$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.0/mongodb-compass-readonly-1.46.0-win32-x64.msi'
$checksum64 = '564f95f62776616ab632addf70b93cd55e501da3a8aae08f5ddcc67cd9ba398c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

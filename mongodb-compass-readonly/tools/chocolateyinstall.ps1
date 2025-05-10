$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.2/mongodb-compass-readonly-1.46.2-win32-x64.msi'
$checksum64 = 'ca260011565339f6e02368d0fafb03701dae44171aa749516fd8c8de598d6a1a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

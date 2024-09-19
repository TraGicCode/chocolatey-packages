$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.4/mongodb-compass-readonly-1.44.4-win32-x64.msi'
$checksum64 = '6b2aae5cf620452387cf3e25a0a596203c431c54979f26b1fb601b3c4f4a5b6b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

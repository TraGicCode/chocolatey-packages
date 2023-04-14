$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.3/mongodb-compass-readonly-1.36.3-win32-x64.msi'
$checksum64 = '2adb039ed7f74fa97be9f02db2d355380cc38d185aa5359698d046e723a9ee4d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.10/mongodb-compass-readonly-1.49.10-win32-x64.msi'
$checksum64 = '2adb3bfd74239a20727045796cd0c9b281767f1a1ff8d7ced667e5850a4bf36b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.0/mongodb-compass-readonly-1.39.0-win32-x64.msi'
$checksum64 = '05e046d9b5aeaaf0bd3103215757f97929a098c2e9553e58a8abf2bf6cd85e99'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

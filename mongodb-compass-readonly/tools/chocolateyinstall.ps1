$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.0/mongodb-compass-readonly-1.48.0-win32-x64.msi'
$checksum64 = '79695cbc931d5590d545c2be9b70eedbf96ae08ccd813741c221569146253933'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

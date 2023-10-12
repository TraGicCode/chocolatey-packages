$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.3/mongodb-compass-readonly-1.40.3-win32-x64.msi'
$checksum64 = '75e4ccec67c7134f19918035cb19deb94f2f2eecdf3348b6aa12a0187e4cde88'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

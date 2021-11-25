$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.5/mongodb-compass-readonly-1.29.5-win32-x64.msi'
$checksum64 = '9aae20bccd6ea7ce8ff4ef551454be46aba59f2bb662263c27e5015b1b913411'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.0/mongodb-compass-1.53.0-win32-x64.msi'
$checksum64 = '533f4f9dd77ffc8b99adff08cfaa47d36aaf50691429642d6a49c56e9f1fe313'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

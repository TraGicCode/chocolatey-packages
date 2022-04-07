$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.1/mongodb-compass-isolated-1.31.1-win32-x64.msi'
$checksum64 = '562cd4931fa15474383811e64b546ca0bdd0ddd29b95434ca227eac6a8c06144'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

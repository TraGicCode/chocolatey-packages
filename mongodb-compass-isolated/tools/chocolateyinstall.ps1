$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.28.1/mongodb-compass-isolated-1.28.1-win32-x64.msi'
$checksum64 = '00a065b7cc904aeab6012fbdf1467094c4cdadb198ad8ec9aa99e7ffe125fee7'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.4/mongodb-compass-isolated-1.32.4-win32-x64.msi'
$checksum64 = 'ace07bbafcd83a86a35b391e64fe3bd8f2374e0e99c4ae8b6d3035341e79f329'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

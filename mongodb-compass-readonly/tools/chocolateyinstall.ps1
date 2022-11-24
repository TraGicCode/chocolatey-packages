$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.1/mongodb-compass-readonly-1.34.1-win32-x64.msi'
$checksum64 = '455f564d98fe12869b2fcc8bd5a90c4c3a63f086a2facebf9676dfec535df51c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

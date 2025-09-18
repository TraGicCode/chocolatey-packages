$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.11/mongodb-compass-readonly-1.46.11-win32-x64.msi'
$checksum64 = 'acfe0eb7c9ef5b09787a8da122680e88bb53c3ab4d096bc647b25902e1844c0c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.7/mongodb-compass-readonly-1.46.7-win32-x64.msi'
$checksum64 = 'c10785461c5237abbeebcd924c0bf5ab95f6dcbbd00e83b81586e6abef09fb01'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

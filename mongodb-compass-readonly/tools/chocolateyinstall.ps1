$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.2/mongodb-compass-readonly-1.39.2-win32-x64.msi'
$checksum64 = '547a0e6c8805fd42759d2944dfa9fab17d5ed56a276f6a7d2610c01334db0f32'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

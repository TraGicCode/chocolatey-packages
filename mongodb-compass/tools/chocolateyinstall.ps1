$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.11/mongodb-compass-1.46.11-win32-x64.msi'
$checksum64 = '9445063230d06178f4c5de08f19db772dd0f0bb37b0d0a6c4a8a340fa00bdfe6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

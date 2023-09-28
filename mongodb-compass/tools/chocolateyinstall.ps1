$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.2/mongodb-compass-1.40.2-win32-x64.msi'
$checksum64 = 'f8a27079ad32f270648f2d03dfd0f3d94aeaeb5e2eaf0345c3ebe6e94e92a3de'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

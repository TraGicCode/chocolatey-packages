$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.0/mongodb-compass-readonly-1.32.0-win32-x64.msi'
$checksum64 = 'b1f58e78920f9c17bfbe5bc3efe8d3795e1a1daaa1d8cda2d90b8f5b646219e4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.9/mongodb-compass-readonly-1.49.9-win32-x64.msi'
$checksum64 = '02a41837d88e78bb3befb23b8aa3895e423b9847394a0f60965cc8cc2abac846'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

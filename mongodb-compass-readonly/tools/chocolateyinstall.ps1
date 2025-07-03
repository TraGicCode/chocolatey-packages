$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.5/mongodb-compass-readonly-1.46.5-win32-x64.msi'
$checksum64 = '05f9239b02f698508a9c90f1699817c31fed74b26aa1983b96ccbd50e94bbbe4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.25.0/mongodb-compass-readonly-1.25.0-win32-x64.msi'
$checksum64 = '24dc2a8472bcfb27e94ce3dc3efc9a38bd8e80d93d84cdc3d9762177f7c50b58'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.4/mongodb-compass-1.46.4-win32-x64.msi'
$checksum64 = '7d232533e19c4734e74fea42de2a79b98c820a40ab7e0ae6dc29b2b7cfe39c76'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

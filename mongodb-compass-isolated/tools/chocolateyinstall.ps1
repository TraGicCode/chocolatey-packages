$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.9/mongodb-compass-isolated-1.46.9-win32-x64.msi'
$checksum64 = '952c81f93de9c2c68fe7faa43332d29dbc3a4cc356cd73cbc1e3aba156954caf'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

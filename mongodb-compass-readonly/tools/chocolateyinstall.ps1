$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.6/mongodb-compass-readonly-1.29.6-win32-x64.msi'
$checksum64 = 'a4e4a589337cda27e31b2cd87322d53c8bb873968d7aabdb8cf7bbe818fcdc82'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

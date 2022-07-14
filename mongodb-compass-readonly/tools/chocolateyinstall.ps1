$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.3/mongodb-compass-readonly-1.32.3-win32-x64.msi'
$checksum64 = '70dc88aa29cf48e7ed8957e2f6f1c4824ae89d49e5fc66e20e57173f68c9c7ae'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

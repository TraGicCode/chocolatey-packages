$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.1/mongodb-compass-readonly-1.45.1-win32-x64.msi'
$checksum64 = 'e3c5fcde4912a69685579c0f4687c2feb252e3810ec0de2fcb9327bcf1b3e265'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

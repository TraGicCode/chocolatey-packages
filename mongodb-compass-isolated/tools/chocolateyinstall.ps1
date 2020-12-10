$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.24.1/mongodb-compass-isolated-1.24.1-win32-x64.msi'
$checksum64 = '18a17a44eb971798c75e6d402be586452f9fa2daf0e4f886c7adf26e5d8898d0'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.3/mongodb-compass-1.31.3-win32-x64.msi'
$checksum64 = '2946d8aeea14e3ddd6e2cc4ca7d9e476c1f89a621c4443caec7ca9f5ee07145f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

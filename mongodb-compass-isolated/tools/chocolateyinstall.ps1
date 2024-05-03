$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.0/mongodb-compass-isolated-1.43.0-win32-x64.msi'
$checksum64 = '1245a2a6ca63ef49715e2f84498876a8ba9685ad33e8de96e03400f85a83b50e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

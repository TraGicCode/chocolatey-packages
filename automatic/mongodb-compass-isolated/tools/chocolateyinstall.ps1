$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.14/mongodb-compass-isolated-1.49.14-win32-x64.msi'
$checksum64 = 'D74CDD689E6A41D6631A2F4230031A2BD9F1CB418AE6342DAC66D857137487FC'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.5/mongodb-compass-1.49.5-win32-x64.msi'
$checksum64 = '26ecfcf6f09cf8faa142a206bfcbe54083b8b74f0fa3846e0d78466b4c633909'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

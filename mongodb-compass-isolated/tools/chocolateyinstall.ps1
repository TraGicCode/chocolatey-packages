$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.1/mongodb-compass-isolated-1.43.1-win32-x64.msi'
$checksum64 = '432c60df8225ddf618581fad2bd920d65eb6f884f3cd28f5ce7b776a7f4e5e5b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

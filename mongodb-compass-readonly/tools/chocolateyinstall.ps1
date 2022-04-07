$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.1/mongodb-compass-readonly-1.31.1-win32-x64.msi'
$checksum64 = 'c75e27d76c5e759de27c30e6fecb3577a226e3b40789f1bb9db8fa05bed5ac75'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs

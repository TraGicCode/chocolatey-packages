$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/Particular/ServicePulse/releases/download/1.18.0/Particular.ServicePulse-1.18.0.exe'
$checksum64 = 'b91f3edde5cd1bf59f2204bb43835d6b85787000684a480c1dc3dace3682393f'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = "/quiet /norestart /LV* `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

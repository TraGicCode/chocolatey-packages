﻿$ErrorActionPreference = 'Stop'

$url64bit   = 'https://hibernatingrhinos.com/downloads/RavenDB%20for%20Windows%20x64/54059'
$checksum64 = '3a4e8bb61c38880e5ccd47bc1912e7bd4e1ab0249b25ac90f0e3e6846fc6b3c4'

# Customization
$service = "RavenDB"

$packageParameters = Get-PackageParameters

# Parameter Defaults
if ($null -eq $packageParameters['install-path']) {
  $packageParameters['install-path'] = "$env:SystemDrive\RavenDB"
}

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $packageParameters['install-path']
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

if ($packageParameters['setup-as-service']) {
    Invoke-Expression -Command "$($packageParameters['install-path'])\Server\rvn.exe windows-service register --service-name $service"
    if ($packageParameters['start-service']) {
      Start-Service -Name RavenDB
    }
}

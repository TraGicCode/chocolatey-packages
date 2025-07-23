$ErrorActionPreference = 'Stop'

$url64bit   = 'https://hibernatingrhinos.com/downloads/RavenDB%20for%20Windows%20x64/71007'
$checksum64 = 'eb01f53fac8c6a2279bb463c61076b492e9e485b7f5a03ef265fde51c7516411'

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

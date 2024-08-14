$ErrorActionPreference = 'Stop'

$url64bit      = 'https://github.com/Particular/ServiceControl/releases/download/5.6.0/Particular.ServiceControl-5.6.0.exe'
$checksum64    = '7f7ff1e0ced534ad09da4b11a0c90732296ae981dbccfe7e0929889a0558a32e'
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pp = Get-PackageParameters

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  fileFullPath   = "$toolsDir\Particular.ServiceControl.exe"
}

Get-ChocolateyWebFile @packageArgs

if (!$pp.NoDesktop) {
  Write-Host "Creating desktop shortcut for ServiceControl..."
  # Create desktop shortcut
  $desktop = [System.Environment]::GetFolderPath('CommonDesktopDirectory')
  Install-ChocolateyShortcut -ShortcutFilePath "$desktop\ServiceControl Management.lnk" -TargetPath $packageArgs.fileFullPath
}

if (!$pp.NoStartMenu) {
  Write-Host "Creating Start Menu shortcut for ServiceControl..."
  $startMenu = [System.Environment]::GetFolderPath('CommonStartMenu')
  Install-ChocolateyShortcut -ShortcutFilePath "$startMenu\ServiceControl Management.lnk" -TargetPath $packageArgs.fileFullPath
}

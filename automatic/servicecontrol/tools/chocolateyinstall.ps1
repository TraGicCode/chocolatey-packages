$ErrorActionPreference = 'Stop'

$url64bit      = 'https://github.com/Particular/ServiceControl/releases/download/6.22.5/Particular.ServiceControl-6.22.5.exe'
$checksum64    = 'df2a5c9aabcf5c8c32ff32b25768baa4b31d5853dc4ba729da50c58a7077e62c'
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

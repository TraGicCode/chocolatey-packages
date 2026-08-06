$ErrorActionPreference = 'Stop';

$url   = 'https://github.com/TraGicCode/NServiceBus.NewRelic.Analyzer/releases/download/1.0.1/NServiceBus.NewRelic.Analyzer.Vsix.vsix'
$checksum = '19016c7265e769bc81c58d5ab33fb74ba07c93fa5fea9addc0433f68a57b7f1b'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$parameters = @{
  PackageName  = $env:ChocolateyPackageName
  url          = $url
  checksum     = $checksum
  checksumType = 'sha256'
  File         = "$toolsPath\"
}

Install-VisualStudioVsixExtension @parameters

Remove-Item -Force -ea 0 "$toolsPath\*.vsix"

$parameters = @{
    PackageName = $env:ChocolateyPackageName
    VsixId      = 'NServiceBus.NewRelic.Analyzer.7618d1b4-16ed-4d9d-a04e-19c0677b0332'
  }
  
  Uninstall-VisualStudioVsixExtension @parameters
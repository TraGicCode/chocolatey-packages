# Chocolatey-Packages

[![](https://ci.appveyor.com/api/projects/status/github/tragiccode/chocolatey-packages?svg=true)](https://ci.appveyor.com/project/tragiccode/chocolatey-packages)
[Update status](https://gist.github.com/tragiccode/797ef6d619ee36be0e570bb5769a5024)
[![](http://transparent-favicon.info/favicon.ico)](#)
[chocolatey/tragiccode](https://chocolatey.org/profiles/tragiccode)

This project contains the automatic updating packages for the public community chocolatey feed.

## How do i quickly and automatically publish a new package to chocolatey?

When a new package is added simply update the nuspec version of the new package to an older version ( one that is not the latest ).  When the PR with the new package is merged into master, the CI/CD process will automatically see the version needs updating and update it ALONG with submitting this new package as a new package to the public chocolatey community feed.

## How do i quickly re-submit an existing package locally

You might want to resubmit an existing package locally if validation failed and you want to recreate and push the nuget package locally.  This can be done as shown below.

```
> cd C:\Source\chocolatey-packages\mongodb-database-tools
> $au_Force = $true; .\update.ps1
> choco push .\mongodb-database-tools.100.1.1.nupkg
```

## How do i quickly re-submit an older version of a package locally? (Manually)

Sometimes a previous version was rejected and you need to repush it.

1. install the checksum chocolatey package
    > choco install checksum -y
2. Find download url and Download the installer
3. put download url in chocolateyinstall.ps1
4. run follow command and put sha in chocolateyinstall.ps1
    > checksum C:\Downloads\serviceinsight.exe -t sha256
5. Update version in nuspec file
6. pack
   >  choco pack .\serviceinsight.nuspec
7. Test install
    > choco install serviceinsight -s . --force
8. push

## Contributing

1. Fork it ( <https://github.com/tragiccode/chocolatey-packages/fork> )
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create a new Pull Request

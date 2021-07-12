Import-Module AU

# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
    }
}
function global:au_BeforeUpdate {
    Get-RemoteFiles -Purge -NoSuffix

    set-alias 7z $Env:chocolateyInstall\tools\7z.exe
    rm tools\*.exe
    7z e tools\*.nupkg ILRepack.exe -r -otools
    rm tools\*.nupkg
}

function global:au_GetLatest {
    $packageName = "ILRepack"
    $package = Find-Package $packageName -provider "nuget" -Source http://www.nuget.org/api/v2/ -Force
    $version = $package.Version
    @{
        Version = $version
        Url32   = "https://api.nuget.org/packages/$($packageName.ToLower()).${version}.nupkg"
    }
}


Update-Package -ChecksumFor 32
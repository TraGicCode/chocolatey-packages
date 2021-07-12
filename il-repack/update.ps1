Import-Module AU

# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s*download the.*)<.*>" = "`$1<$($Latest.URL32)>"
            "(?i)(^\s*checksum\s*type\:).*" = "`${1} $($Latest.ChecksumType32)"
            "(?i)(^\s*checksum(32)?\:).*" = "`${1} $($Latest.Checksum32)"
          }
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
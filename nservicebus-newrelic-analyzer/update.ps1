Import-Module AU


# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
        '.\tools\chocolateyinstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"   = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*File\s*=\s*`"[$]toolsPath\\).*" = "`${1}$($Latest.FileName32)`""
        }
    }
}

# Get latest version + download url of the software
function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $latest_release = Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/TraGicCode/NServiceBus.NewRelic.Analyzer/releases/latest'

    @{
        Version = $latest_release.tag_name
        URL32   = $latest_release.assets.Where({ $PSItem.name -like '*vsix*' }).browser_download_url
    }

}

Update-Package -ChecksumFor 32
Import-Module Chocolatey-AU


# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
        '.\tools\chocolateyinstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"                  = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')"             = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*File\s*=\s*`"[$]toolsPath\\).*" = "`${1}$($Latest.FileName32)`""
        }
    }
}

# Get latest version + download url of the software
function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $ReleaseRequest = @{
        Uri = 'https://api.github.com/repos/TraGicCode/NServiceBus.NewRelic.Analyzer/releases/latest'
    }

    if (-not [string]::IsNullOrEmpty($env:github_api_key)) {
        $ReleaseRequest.Headers = @{
            Authorization = "Bearer $($env:github_api_key)"
        }
    }

    $latest_release = Invoke-RestMethod @ReleaseRequest

    @{
        Version = $latest_release.tag_name
        URL32   = $latest_release.assets.Where({ $PSItem.name -like '*vsix*' }).browser_download_url
    }

}

Update-Package -ChecksumFor 32
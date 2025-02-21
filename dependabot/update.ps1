Import-Module AU


# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
        '.\tools\chocolateyinstall.ps1' = @{
            "(^[$]url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}
# Get latest version + download url of the software
function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $releases =  Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/dependabot/cli/releases'
    # Latest non-pre-release
    $latest_release = $releases.Where({ $PSItem.name -match '^v[0-9]+\.[0-9]+\.[0-9]+$'})[0]
    $version = $latest_release.name
    $versionWithoutV = $version.Substring(1)
    foreach( $asset in $latest_release.assets) 
    {
        if ($asset.browser_download_url.Contains("dependabot-$version-windows-amd64.zip"))
        {
            $zip_download_url = $asset.browser_download_url
        }
    }

    @{
        Version = $versionWithoutV
        URL64   = $zip_download_url
    }
}

Update-Package -ChecksumFor 64
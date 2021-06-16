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
    $releases =  Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/mongodb-js/compass/releases'
    # Latest non-pre-release
    $latest_release = $releases.Where({ $PSItem.name -match '^[0-9]+\.[0-9]+\.[0-9]+$'})[0]
    $version = $latest_release.name
    foreach( $asset in $latest_release.assets) 
    {
        if ($asset.browser_download_url.Contains("mongodb-compass-$version-win32-x64.msi"))
        {
            $msi_download_url = $asset.browser_download_url
        }
    }

    @{
        Version = $version
        URL64   = $msi_download_url
    }

}

Update-Package -ChecksumFor 64
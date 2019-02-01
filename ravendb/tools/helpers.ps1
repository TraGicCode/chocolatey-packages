function Update-RavenDBServerDirectoryAcls
{
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $ServerDirectoryPath
    )
    $acl = Get-Acl $ServerDirectoryPath
    $permissions = "LocalService", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow"
    $rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permissions
    $acl.SetAccessRuleProtection($False, $False)
    $acl.AddAccessRule($rule)
    Set-Acl -Path $ServerDirectoryPath -AclObject $acl
}
configuration GL_VM_VP_WEB
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Import-DscResource -ModuleName GLResources

    $folders = @(
        'C:\Thalles\1'
        'C:\Thalles\2'        
    )

    node "localhost"
    {
        LogFolderCreation AFolder
        {
            folders = $folders
        }
    }
}

GL_VM_VP_WEB -Verbose

Start-DscConfiguration "GL_VM_VP_WEB" -Wait -Verbose -Force
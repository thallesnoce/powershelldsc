Configuration LogFolderCreation {
    Param(
    [string[]]    $folders
    )
    
    foreach($name in $folders) {
        File "AFolder_${name}"
        {
            Ensure = "Present"
            DestinationPath = $name
            Type = "Directory"
        }
    }
}
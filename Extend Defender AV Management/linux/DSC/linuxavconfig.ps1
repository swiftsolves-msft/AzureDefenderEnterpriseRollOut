#Establish DSC script file to install file mdatp_managed.json
Configuration 'linuxavconfig' {
    #Import the nx DSC Resource
    Import-DscResource -ModuleName 'nx'
    Node localhost {
        nxFile mdatp_managed.json
        {
            SourcePath = "https://linuxavdsc.blob.core.windows.net/config/mdatp_managed.json"
            DestinationPath = "/etc/opt/microsoft/mdatp/managed/mdatp_managed.json"
            Ensure = "Present"
            Checksum = "KczHzDUMbOZouZ26xjUq6w=="
            Type = "File"
            Force = $true
        }
    }
}
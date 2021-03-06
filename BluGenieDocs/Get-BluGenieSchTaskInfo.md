# Get-BluGenieSchTaskInfo

## SYNOPSIS
Get a full list of Scheduled Tasks

## SYNTAX
```
Get-BluGenieSchTaskInfo [[-FilterType] <String>] [[-Pattern] <String>] [[-Algorithm] <String>] [-Signature] [-RemoveTask] [-ClearGarbageCollecting] [-UseCache] [[-CachePath] <String>] [-RemoveCache] [[-DBName] <String>] [[-DBPath] <String>] [-UpdateDB] 
[-ForceDBUpdate] [-NewDBTable] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Get a full list of Scheduled Tasks

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieSchTaskInfo
 ``` 
 ```yam 
 Description: Return a full list of Scheduled Tasks from the system
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieSchTaskInfo -Algorithm SHA256
 ``` 
 ```yam 
 Description: Return a full list of Scheduled Tasks from the system with a SHA256 Hash value
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command:  Get-BluGenieSchTaskInfo -Algorithm SHA512 -FilterType Enabled -Pattern True
 ``` 
 ```yam 
 Description: Return Scheduled Tasks that have an (Enabled) value of (True)
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieSchTaskInfo -FilterType Command -Pattern '^C:\\Windows\\explorer\.exe$'
 ``` 
 ```yam 
 Description: Return Scheduled Tasks that have a (Command) value that will equal (C:\Widnows\explorer.exe)
Notes: The -Pattern parameter is using RegEx patterns.
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieSchTaskInfo -FilterType Path -Pattern '^\\Google\\Testing$' -RemoveTask
 ``` 
 ```yam 
 Description: Return Scheduled Tasks that have a (Path) value that will equal (\Google\Testing) and remove any item(s) found
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieSchTaskInfo -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieSchTaskInfo -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieSchTaskInfo -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a full list of Scheduled Tasks from the system and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieSchTaskInfo -ReturnObject
 ``` 
 ```yam 
 Description: Return a full list of Scheduled Tasks from the system and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### FilterType
 ```yam 
 -FilterType <String>
    Description: Filter based on Property Type
    Notes:
    -Filter Types-
    Filter Option = "Path"                  - Task Scheduler Folder Path
            Filter Option = "Enabled"               - True or False [String] Value
            Filter Option = "Hash"                  - MD5 Hash Information
            Filter Option = "Command"               - Command line / Path to the Executable
            Filter Option = "Argument"              - Command line arguments
            Filter Option = "Description"           - Description field [string]
            Filter Option = "Author"                - Author / Creator of the Task
            Filter Option = "Name"                  - Name / Title of the Task
            Filter Option = "NoFilter"              - No Filted.  Show all Task Items
            Filter Option = "Signature_Comment"		- Display error message while pulling Signature Information [Note:  This is only
                                                        available if you use the -Signature switch]
            Filter Option = "Signature_FileVersion" - File Version and OS Build information in part of the OS [Note:  This is only available
                                                        if you use the -Signature switch]
            Filter Option = "Signature_Description" - The description of the files signature [Note:  This is only available if you use the
                                                        -Signature switch]
            Filter Option = "Signature_Date"		- Date when the file was signed [Note:  This is only available if you use the
                                                        -Signature switch]
            Filter Option = "Signature_Company"		- The company signing the file [Note:  This is only available if you use the -Signature
                                                        switch]
            Filter Option = "Signature_Publisher"	- The Publisher signing the file [Note:  This is only available if you use the
                                                        -Signature switch]
            Filter Option = "Signature_Verified"	- Verification ( Signed / UnSigned / Null ) [Note:  This is only available if you use
                                                        the -Signature switch]
    Alias:
    ValidateSet: Path,Enabled,Hash,Command,Argument,Description,Author,Name,NoFilter,Signature_Comment,Signature_FileVersion,Signature_Description,Signature_Date,Signature_Company,Signature_Publisher,Signature_Verified
    
    Required?                    false
    Position?                    1
    Default value                Name
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Pattern
 ```yam 
 -Pattern <String>
    Description: Search Pattern using RegEx
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                .*
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Algorithm
 ```yam 
 -Algorithm <String>
    Description:  Specifies the cryptographic hash to use for computing the hash value of the contents of the specified file.
    Notes:  The acceptable values for this parameter are:
    
                - SHA1
                - SHA256
                - SHA384
                - SHA512
                - MACTripleDES
                - MD5 = (Default)
                - RIPEMD160
    Alias:
    ValidateSet: 'MACTripleDES','MD5','RIPEMD160','SHA1','SHA256','SHA384','SHA512'
    
    Required?                    false
    Position?                    3
    Default value                MD5
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Signature
 ```yam 
 -Signature [<SwitchParameter>]
    Description: Query Signature information
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveTask
 ```yam 
 -RemoveTask [<SwitchParameter>]
    Description: Remove any items found based on the query
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ClearGarbageCollecting
 ```yam 
 -ClearGarbageCollecting [<SwitchParameter>]
    Description: Garbage Collection in Powershell to Speed up Scripts and help lower memory consumption
    Notes: This is enabled by default.  To disable use -ClearGarbageCollecting:$False
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### UseCache
 ```yam 
 -UseCache [<SwitchParameter>]
    Description: Cache found objects to disk.  This is to not over tax Memory resources with found artifacts
    Notes: By default the Cache location is %SystemDrive%\Windows\Temp
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### CachePath
 ```yam 
 -CachePath <String>
    Description: Path to store the Cache information
    Notes: By default the Cache location is %SystemDrive%\Windows\Temp
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    4
    Default value                $('{0}\Windows\Temp\{1}.log' -f $env:SystemDrive, $(New-BluGenieUID))
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveCache
 ```yam 
 -RemoveCache [<SwitchParameter>]
    Description: Remove Cache data on completion
    Notes: Cache information is removed right before the data is returned to the calling process
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### DBName
 ```yam 
 -DBName <String>
    Description: Database Name (Without extention)
    Notes: The default name is set to 'BluGenie'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    5
    Default value                BluGenie
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### DBPath
 ```yam 
 -DBPath <String>
    Description: Path to either Save or Update the Database
    Notes: The default path is $('{0}\BluGenie' -f $env:ProgramFiles)  Example: C:\Program Files\BluGenie
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    6
    Default value                $('{0}\BluGenie' -f $env:ProgramFiles)
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### UpdateDB
 ```yam 
 -UpdateDB [<SwitchParameter>]
    Description: Save return data to the Sqlite Database
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ForceDBUpdate
 ```yam 
 -ForceDBUpdate [<SwitchParameter>]
    Description: Force an update of the return data to the Sqlite Database
    Notes: By default only new items are saved.  The primary key is ( FullName )
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### NewDBTable
 ```yam 
 -NewDBTable [<SwitchParameter>]
    Description: Delete and Recreate the Database Table
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    Description:  Start the dynamic help menu system to help walk through the current command and all of the parameters
    Notes:
    Alias: Help
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ReturnObject
 ```yam 
 -ReturnObject [<SwitchParameter>]
    Description: Return information as an Object
    Notes: By default the data is returned as a Hash Table
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutUnEscapedJSON
 ```yam 
 -OutUnEscapedJSON [<SwitchParameter>]
    Description: Remove UnEsacped Char from the JSON information.
    Notes: This will beautify json and clean up the formatting.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutYaml
 ```yam 
 -OutYaml [<SwitchParameter>]
    Description: Return detailed information in Yaml Format
    Notes: Only supported in Posh 3.0 and above
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### FormatView
 ```yam 
 -FormatView <String>
    Description: Automatically format the Return Object
    Notes: Yaml is only supported in Posh 3.0 and above
    Alias:
    ValidateSet: 'Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml'
    
    Required?                    false
    Position?                    7
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



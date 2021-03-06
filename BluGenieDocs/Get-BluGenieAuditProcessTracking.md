# Get-BluGenieAuditProcessTracking

## SYNOPSIS
Format a System Event Log with new properties from the Message field

## SYNTAX
```
Get-BluGenieAuditProcessTracking [[-QueryType] <String>] [[-Algorithm] <String>] [-Signature] [-OnDisk] [-ShowAllValues] [-ClearGarbageCollecting] [-UseCache] [[-CachePath] <String>] [-RemoveCache] [[-DBName] <String>] [[-DBPath] <String>] [-UpdateDB] 
[-ForceDBUpdate] [-NewDBTable] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Format a System Event Log with new properties from the Message field

An Event has a Message that is one big string.
The function will parse that information and convert any valid line item into a new Object Property and
bind it back to the original Object.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieAuditProcessTracking
 ``` 
 ```yam 
 Description: This will return a Hash Table with a specific list of captured event Properties
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieAuditProcessTracking -ShowAllValues
 ``` 
 ```yam 
 Description: This will return a Hash Table with all captured event Properties
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieAuditProcessTracking -ReturnObject
 ``` 
 ```yam 
 Description: This will return a Object with a specific list of captured event Properties
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieAuditProcessTracking -QueryType OnCreated -Signature
 ``` 
 ```yam 
 Description: This will return a Hash Table with a specific list of captured event Properties including the Authentication Information
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieAuditProcessTracking -UseCache
 ``` 
 ```yam 
 Description: Cache found objects to disk to not over tax Memory resources
Notes: By default the Cache location is %SystemDrive%\Windows\Temp
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieAuditProcessTracking -UseCache -RemoveCache
 ``` 
 ```yam 
 Description: Remove Cache data
Notes: By default the Cache information is removed right before the data is returned to the caller
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieAuditProcessTracking -UseCache -CachePath $Env:Temp
 ``` 
 ```yam 
 Description: Change the Cache path to the current users Temp directory
Notes: By default the Cache location is %SystemDrive%\Windows\Temp
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieAuditProcessTracking -UseCache -ClearGarbageCollecting
 ``` 
 ```yam 
 Description: Scan large directories and limit the memory used to track data
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieAuditProcessTracking -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
        Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Get-BluGenieAuditProcessTracking -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
        Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Get-BluGenieAuditProcessTracking -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a detailed function report in an UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Get-BluGenieAuditProcessTracking -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Get-BluGenieAuditProcessTracking -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
        This parameter is also used with the FormatView
 ``` 
 
### EXAMPLE 14
 ``` 
 Command: Get-BluGenieAuditProcessTracking -ReturnObject -FormatView Yaml
 ``` 
 ```yam 
 Description: Output PSObject information in Yaml format
Notes:  Current formats supported by default are ('Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml')
        Default is set to (None) and normal PSObject.
 ``` 


## PARAMETERS

### QueryType
 ```yam 
 -QueryType <String>
    Description: Specifies the type of Events to Query for
    Notes: The acceptable values for this parameter are:
            - OnCreated          : Query On Created Events Only
            - OnExited           : Query On Exited Events Only
            - OnAll = (Default)  : Query On All Event types (Created and Exited)
    
            If no value is specified, or if the parameter is omitted, the default value is (OnAll).
    Alias:
    ValidateSet:'OnCreated','OnExited','OnAll'
    
    Required?                    false
    Position?                    1
    Default value                OnAll
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Algorithm
 ```yam 
 -Algorithm <String>
    Description: Specifies the cryptographic hash to use for computing the hash value of the contents of the specified file.
    Notes: The acceptable values for this parameter are:
            - SHA1
            - SHA256
            - SHA384
            - SHA512
            - MACTripleDES
            - MD5 = (Default)
            - RIPEMD160
    
            If no value is specified, or if the parameter is omitted, the default value is (MD5).
    Alias:
    ValidateSet:'MACTripleDES','MD5','RIPEMD160','SHA1','SHA256','SHA384','SHA512'
    
    Required?                    false
    Position?                    2
    Default value                MD5
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Signature
 ```yam 
 -Signature [<SwitchParameter>]
    Description: Validate Signature information of the process if the item is still on disk.
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OnDisk
 ```yam 
 -OnDisk [<SwitchParameter>]
    Description: Verify if the flagged process is still on disk
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ShowAllValues
 ```yam 
 -ShowAllValues [<SwitchParameter>]
    
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
    Position?                    3
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
    Position?                    4
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
    Position?                    5
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
    Position?                    6
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



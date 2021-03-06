# Get-BluGenieAutoRuns

## SYNOPSIS
Get-BluGenieAutoRuns reports on what programs are configured to run during system bootup or login

## SYNTAX
```
Get-BluGenieAutoRuns [[-ToolPath] <String>] [[-Algorithm] <String>] [-Signature] [[-HideSigned] <String>] [-ClearGarbageCollecting] [-UseCache] [[-CachePath] <String>] [-RemoveCache] [[-DBName] <String>] [[-DBPath] <String>] [-UpdateDB] [-ForceDBUpdate] 
[-NewDBTable] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Get-BluGenieAutoRuns reports on what programs are configured to run during system bootup or login, and when you start various built-in
Windows applications like Internet Explorer, Explorer and media players. These programs and drivers include ones
in your startup folder, Run, RunOnce, and other Registry keys.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieAutoRuns
 ``` 
 ```yam 
 Description: Report on currently configured auto-start applications as well as the full list of Registry and file system locations available for auto-start configuration
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieAutoRuns -Algorithm SHA256
 ``` 
 ```yam 
 Description: Report on currently configured auto-start information, also display the Hash Algorithm in "SHA256"
Notes: The Hash Algorithm will be set to "SHA256".  The default is "MD5"
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieAutoRuns -Signature -HideSigned Microsoft
 ``` 
 ```yam 
 Description: Report on currently configured auto-start information that do not have an Authorized Signature from Microsoft.
Notes: This report will quickly identify any 3rd party or unsigned entries.
        To display Signature information you need to use the (-Signature) switch
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieAutoRuns -Signature -HideSigned All
 ``` 
 ```yam 
 Description: Report on currently configured auto-start information that do not have an Authorized Signature.
Notes: This report will quickly identify any 3rd party or unsigned entries.
        To display Signature information you need to use the (-Signature) switch
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieAutoRuns -Signature
 ``` 
 ```yam 
 Description: Report on currently configured auto-start information with Authorized Signature Information.
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieAutoRuns -ToolPath 'C:\Temp\AutoRunSC.exe'
 ``` 
 ```yam 
 Description: Locate the AutoRun tool under C:\Temp and Report on currently configured auto-start information
Notes:
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieAutoRuns -UseCache
 ``` 
 ```yam 
 Description: Cache found objects to disk to not over tax Memory resources
Notes: By default the Cache location is %SystemDrive%\Windows\Temp
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieAutoRuns -UseCache -RemoveCache
 ``` 
 ```yam 
 Description: Remove Cache data
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieAutoRuns -SearchPath Temp -Recurse -UseCache -CachePath $Env:Temp
 ``` 
 ```yam 
 Description: Change the Cache path to the current users Temp directory
Notes: By default the Cache location is %SystemDrive%\Windows\Temp
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Get-BluGenieAutoRuns -UseCache -ClearGarbageCollecting
 ``` 
 ```yam 
 Description: Scan large directories and limit the memory used to track data
Notes:
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Get-BluGenieAutoRuns -UpdateDB
 ``` 
 ```yam 
 Description: Search every user and system Temp directory for all normal file information including hash and save the return to a DB
Notes: The default path is $('{0}\BluGenie' -f $env:ProgramFiles)  Example: C:\Program Files\BluGenie
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Get-BluGenieAutoRuns -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Get-BluGenieAutoRuns -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 14
 ``` 
 Command: Get-BluGenieAutoRuns -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: <command_here> and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 15
 ``` 
 Command: Get-BluGenieAutoRuns -ReturnObject
 ``` 
 ```yam 
 Description: <command_here> and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 16
 ``` 
 Command: Get-BluGenieAutoRuns -SearchPath Temp -Recurse -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 17
 ``` 
 Command: Get-BluGenieAutoRuns -SearchPath Temp -Recurse -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
This parameter is also used with the ForMat
 ``` 
 
### EXAMPLE 18
 ``` 
 Command: Get-BluGenieAutoRuns -SearchPath Temp -Recurse -ReturnObject -FormatView Yaml
 ``` 
 ```yam 
 Description: Output PSObject information in Yaml format
Notes:  Current formats supported by default are ('Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml', 'XML')
Default is set to (None) and normal PSObject.
 ``` 


## PARAMETERS

### ToolPath
 ```yam 
 -ToolPath <String>
    Description: ToolPath for the AutoRunSC.exe
    Notes: The default ToolPath is ( .\Tools\SysinternalsSuite ) with a backup path of ( $env:Windir\Temp )
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                $(Join-Path -Path $ToolsDirectory -ChildPath 'SysinternalsSuite')
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
    Position?                    2
    Default value                MD5
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Signature
 ```yam 
 -Signature [<SwitchParameter>]
    Description: Query Signature information
    Notes:  This will slow down the query
    Alias:
    ValidateSet
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### HideSigned
 ```yam 
 -HideSigned <String>
    Description: Hide signed files to help quickly identify 3rd party or unsigned entries
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                
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



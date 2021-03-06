# Get-BluGenieFileStreams

## SYNOPSIS
Query file(s) for NTFS ADS Content

## SYNTAX
```
Get-BluGenieFileStreams [[-Path] <String[]>] [-ClearGarbageCollecting] [-UseCache] [-CachePath <String>] [-RemoveCache] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [-FormatView <String>] [<CommonParameters>]
```

## DESCRIPTION
Query file(s) for NTFS ADS Content

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt","%SystemDrive%\Windows\Notepod.exe"
 ``` 
 ```yam 
 Description: Query file Permissions Information using the Path Parameter
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt,%SystemDrive%\Windows\Notepod.exe"
 ``` 
 ```yam 
 Description: Query file Permissions Information using a Single String Array with a comma separator
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt;%SystemDrive%\Windows\Notepod.exe"
 ``` 
 ```yam 
 Description: Query file Permissions Information using a Single String Array with a semicolon separator
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-ChildItem -path $env:temp -File | Get-BluGenieFileStreams
 ``` 
 ```yam 
 Description: Query file Permissions Information using Named value from Pipeline
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-ChildItem -path $env:temp -File | Select-Object -ExpandProperty Fullname | Get-BluGenieFileStreams
 ``` 
 ```yam 
 Description: Query file Permissions Information using value from Pipeline
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-FileADS -path "C:\Temp\File1.txt"
 ``` 
 ```yam 
 Description: Query file Permissions Information using the Function Alias
Notes:
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -UseCache
 ``` 
 ```yam 
 Description: Cache found objects to disk to not over tax Memory resources
Notes: By default the Cache location is %SystemDrive%\Windows\Temp
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -UseCache -RemoveCache
 ``` 
 ```yam 
 Description: Remove Cache data
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -UseCache -CachePath $Env:Temp
 ``` 
 ```yam 
 Description: Change the Cache path to the current users Temp directory
Notes: By default the Cache location is %SystemDrive%\Windows\Temp
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Get-ChildItem -path $env:temp -File | Get-BluGenieFileStreams -UseCache -ClearGarbageCollecting
 ``` 
 ```yam 
 Description: Scan large directories and limit the memory used to track data
Notes:
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Get-BluGenieFileStreams -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Get-BluGenieFileStreams -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a detailed function report in an UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 14
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 15
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
           This parameter is also used with the ForMat
 ``` 
 
### EXAMPLE 16
 ``` 
 Command: Get-BluGenieFileStreams -path "C:\Temp\File1.txt" -ReturnObject -FormatView Yaml
 ``` 
 ```yam 
 Description: Output PSObject information in Yaml format
Notes:  Current formats supported by default are ('Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml', 'XML')
           Default is set to (None) and normal PSObject.
 ``` 


## PARAMETERS

### Path
 ```yam 
 -Path <String[]>
    Description: File Path
    Notes:  
    Alias: 'Fullname'
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       true (ByValue, ByPropertyName)
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
    Default value                True
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
    Position?                    named
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
    Position?                    named
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



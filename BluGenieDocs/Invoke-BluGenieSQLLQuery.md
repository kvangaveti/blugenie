# Invoke-BluGenieSQLLQuery

## SYNOPSIS
Invoke-BluGenieSQLLQuery is a shim function to ( Invoke-SqliteQuery ) which helps manage SQL queries and gives us a correctly
formatted return for BluGenie reporting

## SYNTAX
```
Invoke-BluGenieSQLLQuery [[-QueryString] <String[]>] [-File <String>] [-DBName <String>] [-DBPath <String>] [-ClearGarbageCollecting] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-FormatView <String>] [<CommonParameters>]
```

## DESCRIPTION
Invoke-BluGenieSQLLQuery is a shim function to ( Invoke-SqliteQuery ) which helps manage SQL queries and gives us a correctly
formatted return for BluGenie reporting

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Invoke-BGSQLLQuery -QueryString "SELECT
 ``` 
 ```yam 
 FullName,
Hash
FROM
BGChildItemList
WHERE
Hash = 'd4d2883b821d5e95805336234a50c7e8'"Description: Return Fullname, and Hash information for a specific item that matches the requested Hash
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Invoke-BGSQLLQuery -File .\Tools\Blubin\Modules\BluGenie\Configs\SQL\grabhash.sql
 ``` 
 ```yam 
 Description: Query the Sqlite Database using a Query from a file
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Invoke-BluGenieSQLLQuery -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Invoke-BluGenieSQLLQuery -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Invoke-BGSQLLQuery -File .\Tools\Blubin\Modules\BluGenie\Configs\SQL\grabhash.sql -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a detailed function report in an UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Invoke-BGSQLLQuery -File .\Tools\Blubin\Modules\BluGenie\Configs\SQL\grabhash.sql -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Invoke-BGSQLLQuery -File .\Tools\Blubin\Modules\BluGenie\Configs\SQL\grabhash.sql -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
        This parameter is also used with the ForMat
 ``` 


## PARAMETERS

### QueryString
 ```yam 
 -QueryString <String[]>
    Description: SQL String to query for specific data from the SQlite Database
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### File
 ```yam 
 -File <String>
    Description: Full file path to a file housing a SQL Query string
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                
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
    Position?                    named
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
    Position?                    named
    Default value                $('{0}\BluGenie' -f $env:ProgramFiles)
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
### FormatView
 ```yam 
 -FormatView <String>
    Description: Automatically format the Return Object
    Notes: Yaml is only supported in Posh 3.0 and above
    Alias:
    ValidateSet: 'Table', 'Custom', 'CustomModified', 'None', 'JSON', 'OutUnEscapedJSON', 'CSV'
    
    Required?                    false
    Position?                    named
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



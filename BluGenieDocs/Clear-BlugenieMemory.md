# Clear-BlugenieMemory

## SYNOPSIS
Garbage Collection in Powershell to Speed up Scripts and help lower memory consumption

## SYNTAX
```
Clear-BlugenieMemory [-All] [[-SleepTimer] <Int32>] [[-LoopCount] <Int32>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Garbage Collection in Powershell to Speed up Scripts and help lower memory consumption.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Clear-BlugenieMemory
 ``` 
 ```yam 
 Description: Remove any garbage collected in memory
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: 1..4 | ForEach-Object -Process { Get-ChildItem -Path C:\Windows -Recurse }; CM
 ``` 
 ```yam 
 Description: Run Get-ChildItem 5 times to start adding artifacts to memory, then remove any garbage collected in memory using the ( CM ) alias.
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Clear-BlugenieMemory -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Clear-BlugenieMemory -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Clear-BlugenieMemory -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: <command_here> and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Clear-BlugenieMemory -ReturnObject
 ``` 
 ```yam 
 Description: <command_here> and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### All
 ```yam 
 -All [<SwitchParameter>]
    Description:  Clear the Console Screen, and any variables that might be holding a lot of data
    Notes: Variables that are cleared of data are ($StackTrace, Error)
    Alias: Help
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### SleepTimer
 ```yam 
 -SleepTimer <Int32>
    
    Required?                    false
    Position?                    1
    Default value                1
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### LoopCount
 ```yam 
 -LoopCount <Int32>
    
    Required?                    false
    Position?                    2
    Default value                1
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
    Default value                True
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
    
    Required?                    false
    Position?                    3
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



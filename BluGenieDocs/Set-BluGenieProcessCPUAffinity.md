# Set-BluGenieProcessCPUAffinity

## SYNOPSIS
Set the Processor affinity of a running Process.

## SYNTAX
```
Set-BluGenieProcessCPUAffinity [[-Id] <Int32[]>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Set the Processor affinity for a running Process by specifying the CPU Cores that it can run on, and the name or PID of a Process(s).

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -Cores 2 -PID 468
 ``` 
 ```yam 
 Description: This will Set the CPU Affinity for the process ID for Chrome to Core 2
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -Cores 1,3,4 -Name "Chrome"
 ``` 
 ```yam 
 Description: This will Set the CPU Affinity for the process named Chrome to Core 1,3 and 4
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -Name "Explorer"
 ``` 
 ```yam 
 Description: This will Set the CPU Affinity for the process named Explorer to all available Cores
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: <command_here> and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -ReturnObject
 ``` 
 ```yam 
 Description: <command_here> and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -ReturnObject -FormatView JSON
 ``` 
 ```yam 
 Description: <command_here> and Return Object formatted in a JSON view
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Set-BluGenieProcessCPUAffinity -ReturnObject -FormatView Custom
 ``` 
 ```yam 
 Description: <command_here> and Return Object formatted in a PSCustom view
Notes:  Format-Custom is designed to display views that are not just tables or just lists. You can use the views defined in the 
           *format.PS1XML files in the PowerShell directory, or you can create your own views in new PS1XML files and use the 
           Update-FormatData cmdlet to add them to PowerShell.
 ``` 


## PARAMETERS

### Id
 ```yam 
 -Id <Int32[]>
    Description: The Process ID for the Process(es) to Set Affinity. 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       true (ByValue, ByPropertyName)
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
    Description: Select which format to return the object data in.
    Notes: Default value is set to (None).  This value is only valid when using the -ReturnObject parameter
    Alias:
    ValidateSet: 'Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV'
    
    Required?                    false
    Position?                    2
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



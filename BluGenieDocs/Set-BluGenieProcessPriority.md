# Set-BluGenieProcessPriority

## SYNOPSIS
Set the Processor Priority of a running Process.

## SYNTAX
```
Set-BluGenieProcessPriority [[-Id] <Int32[]>] [[-PriorityLevel] <String>] [-ReviewOnly] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Set the Processor Priority for a running Process based on 6 different priority levels.

=====================================================================================================
|| Set Priority Level ID || Priority Level Name  || Get Priority Level ID   ||  Parameter Index ID ||
=====================================================================================================
|| 256                   ||	Realtime             || 24                      || 	5                  ||
|| 128                   ||	High                 || 13                      || 	4                  ||
|| 32768                 ||	Above normal         || 10                      ||	3                  ||
|| 32                    ||	Normal               || 8                       ||	2                  ||
|| 16384                 ||	Below normal         || 6                       ||	1                  ||
|| 64                    ||	Low                  || 4                       ||	0                  ||
=====================================================================================================

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieProcessPriority -Name powershell_ise -PriorityLevel 0
 ``` 
 ```yam 
 Description: Set PowerShell_ise.exe to a priority level of 0 / Lowest Priority
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Set-BluGenieProcessPriority -Name powershell_ise -PriorityLevel 2
 ``` 
 ```yam 
 Description: Set PowerShell_ise.exe to a priority level of 2 / Normal Priority
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Set-BluGenieProcessPriority -Name powershell_ise -PriorityLevel 5
 ``` 
 ```yam 
 Description: Set PowerShell_ise.exe to a priority level of 5 / Realtime Priority
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Set-BluGenieProcessPriority -Name powershell_ise -ReviewOnly -ReturnObject
 ``` 
 ```yam 
 Description: Review the Priority level for PowerShell_ise.exe as an object
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Set-BluGenieProcessPriority -Name powershell_ise,notepad -ReviewOnly -ReturnObject
 ``` 
 ```yam 
 Description: Review the Priority level for a list of processes as an object
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Set-BluGenieProcessPriority -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Set-BluGenieProcessPriority -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Set-BluGenieProcessPriority -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: <command_here> and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Set-BluGenieProcessPriority -ReturnObject
 ``` 
 ```yam 
 Description: <command_here> and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Set-BluGenieProcessPriority -ReturnObject -FormatView JSON
 ``` 
 ```yam 
 Description: <command_here> and Return Object formatted in a JSON view
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Set-BluGenieProcessPriority -ReturnObject -FormatView Custom
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
    Description: The Process ID for the Process(es) to Set Priority. 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### PriorityLevel
 ```yam 
 -PriorityLevel <String>
    Description: Priority Level (5 - Highest / 0 - Lowest)
    Notes:  
    Alias:
    ValidateSet: '5, 4, 3, 2, 1, 0'
    
    Required?                    false
    Position?                    2
    Default value                2
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ReviewOnly
 ```yam 
 -ReviewOnly [<SwitchParameter>]
    
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
    Description: Select which format to return the object data in.
    Notes: Default value is set to (None).  This value is only valid when using the -ReturnObject parameter
    Alias:
    ValidateSet: 'Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV'
    
    Required?                    false
    Position?                    3
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



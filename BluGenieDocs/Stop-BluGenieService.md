# Stop-BluGenieService

## SYNOPSIS
Stop the Windows Service called BluGenie

## SYNTAX
```
Stop-BluGenieService [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Stop the Windows Service called BluGenie

This is not a permenant stop.  This is until the next restart.  If you want to stop the service even after a system restart
you should remove the BGServcie with Remove-BGService.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Stop-BluGenieService
 ``` 
 ```yam 
 Description: Stop the Windows Service called BluGenie
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Stop-BGService
 ``` 
 ```yam 
 Description: Use the Alias to stop the Windows Service called BluGenie
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Stop-BluGenieService -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Stop-BluGenieService -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Stop-BluGenieService -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a detailed function report in an UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Stop-BluGenieService -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Stop-BluGenieService -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
        This parameter is also used with the ForMat
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Stop-BluGenieService -ReturnObject -FormatView Yaml
 ``` 
 ```yam 
 Description: Output PSObject information in Yaml format
Notes:  Current formats supported by default are ('Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml')
        Default is set to (None) and normal PSObject.
 ``` 


## PARAMETERS

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
    Position?                    1
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



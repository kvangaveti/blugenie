# Get-BluGenieScriptDirectory

## SYNOPSIS
Display the Script Directory Path

## SYNTAX
```
Get-BluGenieScriptDirectory [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Display the Script Directory Path

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieScriptDirectory
 ``` 
 ```yam 
 Description: Display the Get-BluGenieScriptDirectory Path
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieScriptDirectory -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



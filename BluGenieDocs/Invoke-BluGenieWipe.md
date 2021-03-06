# Invoke-BluGenieWipe

## SYNOPSIS
Invoke-BluGenieWipe is an add-on to reset all set options in the BluGenie Console

## SYNTAX
```
Invoke-BluGenieWipe [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Invoke-BluGenieWipe is an add-on to reset all set options in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Invoke-BluGenieWipe
 ``` 
 ```yam 
 Description: Reset all parameters in the BluGenie Console
Notes: Parameters
        * Systems
        * Range
        * Commands
        * ParallelCommands
        * PostCommands
        * JSONJob
        * ThreadCount
        * JobID
        * Debug
        * JobTimeOut
        * Trap
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Invoke-BluGenieWipe -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
        Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Invoke-BluGenieWipe -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
        Get-Help will be called with the -Full parameter
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



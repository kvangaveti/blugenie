# Set-BluGenieJobId

## SYNOPSIS
Set-BluGenieJobId is an add-on to manage the Job ID in the BluGenie Console

## SYNTAX
```
Set-BluGenieJobId [[-ID] <String>] [-Remove] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieJobId is an add-on to manage the Job ID in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieJobId 'ID5564'
 ``` 
 ```yam 
 Description: Set JobID using the default command name
Notes: The ID is a string
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Set-BluGenieJobId -ID 'ID5564'
 ``` 
 ```yam 
 Description: Set JobID using the default command name while using the JOB ID parameter
Notes: The ID is a string
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Set-JobId -ID 'ID5564'
 ``` 
 ```yam 
 Description: Set JobID using the Alias command name while using the JOB ID parameter
Notes: The ID is a string
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Set-BluGenieJobId -Remove
 ``` 
 ```yam 
 Description: Remove the Job ID.
Notes: If no Job ID is set.  The current time and date will be used instead.
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Set-BluGenieJobId -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Set-BluGenieJobId -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### ID
 ```yam 
 -ID <String>
    Description: JobID value
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Remove
 ```yam 
 -Remove [<SwitchParameter>]
    Description: Remove the current value
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



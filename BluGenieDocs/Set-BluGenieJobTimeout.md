# Set-BluGenieJobTimeout

## SYNOPSIS
Set-BluGenieJobTimeout is an add-on to manage the Job Timeout in the BluGenie Console

## SYNTAX
```
Set-BluGenieJobTimeout [[-Timeout] <Int32>] [-Reset] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieJobTimeout is an add-on to manage the Job Timeout in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieJobTimeout '5'
 ``` 
 ```yam 
 Description: Set Job Timeout
Notes: The Timeout is an [Int]
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Set-BluGenieJobId -Timeout '160'
 ``` 
 ```yam 
 Description: Set Job Timeout using the default command name while using the Timeout parameter
Notes: The Timeout is an [Int]
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Set-JobTimeout -Timeout '30'
 ``` 
 ```yam 
 Description: Set Job Timeout using the Alias command name while using the Job Timeout parameter
Notes: The Timeout is an [Int]
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Set-BluGenieJobTimeout -Reset
 ``` 
 ```yam 
 Description: Reset the Job Timeout to 120 minutes
Notes:
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

### Timeout
 ```yam 
 -Timeout <Int32>
    Description: Job Timeout value
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                0
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Reset
 ```yam 
 -Reset [<SwitchParameter>]
    
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



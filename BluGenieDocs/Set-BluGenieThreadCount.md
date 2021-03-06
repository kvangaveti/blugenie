# Set-BluGenieThreadCount

## SYNOPSIS
Set-BluGenieThreadCount is an add-on to manage the Job ID in the BluGenie Console

## SYNTAX
```
Set-BluGenieThreadCount [[-Count] <Int32>] [-Reset] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieThreadCount is an add-on to manage the Job ID in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieThreadCount '25'
 ``` 
 ```yam 
 Description: Set Thread Count
Notes: The value is a [Int]
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Set-BluGenieThreadCount -Count '1000'
 ``` 
 ```yam 
 Description: Set JobID using the Count parameter
Notes: The value is a [Int]
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: ThreadCount -Count '1000'
 ``` 
 ```yam 
 Description: Set JobID using the Alias command name while using the JOB ID parameter
Notes: The value is a [Int]
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Set-BluGenieThreadCount -Reset
 ``` 
 ```yam 
 Description: Reset the Thread Count back to the default which is 50
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Set-BluGenieThreadCount -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Set-BluGenieThreadCount -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
          Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### Count
 ```yam 
 -Count <Int32>
    Description: ThreadCount value
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
    Description: Reset the current value back to 50
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



# Test-BluGenieIsMutexAvailable

## SYNOPSIS
Wait, up to a timeout value, to check if current thread is able to acquire an exclusive lock on a system mutex.

## SYNTAX
```
Test-BluGenieIsMutexAvailable [[-MutexName] <String>] [[-MutexWaitTimeInMilliseconds] <Int32>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
A mutex can be used to serialize applications and prevent multiple instances from being opened at the same time.
Wait, up to a timeout (default is 1 millisecond), for the mutex to become available for an exclusive lock.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Test-BluGenieIsMutexAvailable -MutexName 'ThreadLock' -MutexWaitTimeInMilliseconds 100000
 ``` 
 ```yam 
 Description: Check to see if Mutex 'ThreadLock' is available.  Continue to wait for 1 min if the process is locked.
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Test-IsMutexAvailable -MutexName 'ThreadLock' -MutexWaitTimeInMilliseconds (New-TimeSpan -Minutes 5).TotalMilliseconds
 ``` 
 ```yam 
 Description: Use the Alias to check to see if Mutex 'ThreadLock' is available.
Notes: Use the New-TimeSpan function to give you the results of 5 minutes in milliseconds
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Test-BluGenieIsMutexAvailable -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
               Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Test-BluGenieIsMutexAvailable -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
               Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Test-BluGenieIsMutexAvailable -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: <command_here> and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Test-BluGenieIsMutexAvailable -ReturnObject
 ``` 
 ```yam 
 Description: <command_here> and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### MutexName
 ```yam 
 -MutexName <String>
    Description: The name of the system mutex. 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                ThreadLock
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### MutexWaitTimeInMilliseconds
 ```yam 
 -MutexWaitTimeInMilliseconds <Int32>
    
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



# Invoke-BluGenieThreadLock

## SYNOPSIS
Create a named Mutex

## SYNTAX
```
Invoke-BluGenieThreadLock [-ShowLocks] [-Walkthrough] [<CommonParameters>]

Invoke-BluGenieThreadLock [-setLock] [[-lockName] <String>] [-timeOut <Int32>] [-GlobalName <String>] [-Walkthrough] [<CommonParameters>]

Invoke-BluGenieThreadLock [-releaseLock] [[-lockName] <String>] [-timeOut <Int32>] [-GlobalName <String>] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
With a named mutex, we can specify a mutex with a name on one process and then tell it to take the mutex and on another process 
(yes, another PowerShell console would work) and call the same named mutex and if we attempt to take the mutex, it will create 
a blocking call until the other process relinquishes control of it. What this allows us to do is have multiple processes that 
can write to a single file without fear of missing data due to the file being locked.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: $mtx = Invoke-BluGenieMutux -Name Log
 ``` 
 ```yam 
 $mtx.WaitOne()
            'other important data' | Out-File C:\importantlogfile.txt -Append
            $mtx.ReleaseMutex()Description: Create Mutux Threading to lock Logging file.
Notes: 

..EXAMPLE
Command: $mtx = Invoke-BluGenieMutux -Name Log
            $mtx.WaitOne(1000)
            'other important data' | Out-File C:\importantlogfile.txt -Append
            $mtx.ReleaseMutex()Description: Create Mutux Threading with a 1000 second timeout.
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 3
 ``` 
 -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### setLock
 ```yam 
 -setLock [<SwitchParameter>]
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### releaseLock
 ```yam 
 -releaseLock [<SwitchParameter>]
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### lockName
 ```yam 
 -lockName <String>
    
    Required?                    false
    Position?                    2
    Default value                ThreadLock
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### timeOut
 ```yam 
 -timeOut <Int32>
    
    Required?                    false
    Position?                    named
    Default value                600
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### GlobalName
 ```yam 
 -GlobalName <String>
    
    Required?                    false
    Position?                    named
    Default value                MyLock
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ShowLocks
 ```yam 
 -ShowLocks [<SwitchParameter>]
    
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



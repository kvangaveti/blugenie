# Set-BluGeniePrefetch

## SYNOPSIS
Enable or Disable Super Prefetching

## SYNTAX
```
Set-BluGeniePrefetch [[-ReturnObject]] [[-Status] <String>] [[-ViewOnly]] [[-Walkthrough]] [<CommonParameters>]
```

## DESCRIPTION
Enable or Disable Super Prefetching

## EXAMPLES

### EXAMPLE 1
 ``` 
 Set-BluGeniePrefetch
 ``` 
 ```yam 
 This will set the Prefetch process to (Prefetch Everything) and Enable and Start the Prefetch Service.
The returned data will be a Hash Table
 ``` 
 
### EXAMPLE 2
 ``` 
 Set-BluGeniePrefetch -ViewOnly
 ``` 
 ```yam 
 This will display information on the current setup of the Prefetch process
 ``` 
 
### EXAMPLE 3
 ``` 
 Set-BluGeniePrefetch -ViewOnly -ReturnObject
 ``` 
 ```yam 
 This will display information on the current setup of the Prefetch process

The returned data will be an Object
 ``` 
 
### EXAMPLE 4
 ``` 
 Set-BluGeniePrefetch -Status Disable
 ``` 
 ```yam 
 This will set the Prefetch process to (Disabled) and Disable and Stop the Prefetch Service.
 ``` 


## PARAMETERS

### ReturnObject
 ```yam 
 -ReturnObject [<SwitchParameter>]
    Return information as an Object.
    By default the data is returned as a Hash Table
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    1
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Status
 ```yam 
 -Status <String>
    Set the Prefetch process status.
    The acceptable values for this parameter are:
    
    - PrefetchEverything
    - BootPrefetch
    - PrefetchOnLaunch
    - Disable
    
    If no value is specified, or if the parameter is omitted, the default value is (PrefetchEverything).
    
    <Type>ValidateSet<Type>
    <ValidateSet>PrefetchEverything,BootPrefetch,PrefetchOnLaunch,Disable<ValidateSet>
    
    Required?                    false
    Position?                    2
    Default value                PrefetchEverything
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ViewOnly
 ```yam 
 -ViewOnly [<SwitchParameter>]
    View the current settings only.  Do not process an update.
    By default the data is returned as a Hash Table
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    3
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    
    Required?                    false
    Position?                    4
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



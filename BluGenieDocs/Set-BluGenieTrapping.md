# Set-BluGenieTrapping

## SYNOPSIS
Set-BluGenieTrapping is an add-on to control Remote Host log trapping in the BluGenie Console

## SYNTAX
```
Set-BluGenieTrapping [-SetTrue] [-SetFalse] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieTrapping is an add-on to control Remote Host log trapping in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Set-BluGenieTrapping
 ``` 
 ```yam 
 This will toggle the Trap indicator from (True to False) or (False to True)
 ``` 
 
### EXAMPLE 2
 ``` 
 Set-BluGenieTrapping -SetTrue
 ``` 
 ```yam 
 This will set the Trap indicator to True
 ``` 
 
### EXAMPLE 3
 ``` 
 Set-BluGenieTrapping -SetFalse
 ``` 
 ```yam 
 This will set the Trap indicator to False
 ``` 


## PARAMETERS

### SetTrue
 ```yam 
 -SetTrue [<SwitchParameter>]
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### SetFalse
 ```yam 
 -SetFalse [<SwitchParameter>]
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    An automated process to walk through the current function and all the parameters
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



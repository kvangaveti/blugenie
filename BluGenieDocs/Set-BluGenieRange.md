# Set-BluGenieRange

## SYNOPSIS
Set-BluGenieRange is an add-on to manage the IP Range in the BluGenie Console

## SYNTAX
```
Set-BluGenieRange [[-Update] <String>] [-Remove] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieRange is an add-on to manage the IP Range in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Set-BluGenieRange
 ``` 
 ```yam 
 This will give you the currect IP Range value
 ``` 
 
### EXAMPLE 2
 ``` 
 Set-BluGenieRange 10.20.136.1-10.20.136.50
 ``` 
 ```yam 
 This will update the current IP Range value to 10.20.136.1-10.20.136.50
 ``` 
 
### EXAMPLE 3
 ``` 
 Set-BluGenieRange -Update 10.20.136.1-10.20.136.150
 ``` 
 ```yam 
 This will update the current IP Range value to 10.20.136.1-10.20.136.150
 ``` 
 
### EXAMPLE 4
 ``` 
 Set-BluGenieRange -Remove
 ``` 
 ```yam 
 This will remove the set IP Range value
 ``` 


## PARAMETERS

### Update
 ```yam 
 -Update <String>
    Update the current value
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Remove
 ```yam 
 -Remove [<SwitchParameter>]
    Remove any IP Range value
    
    <Type>SwitchParameter<Type>
    
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



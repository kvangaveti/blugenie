# Convert-BluGenieSID2UserName

## SYNOPSIS
Convert Security ID (SID) to UserName

## SYNTAX
```
Convert-BluGenieSID2UserName [[-SID] <String>] [[-Walkthrough]] [<CommonParameters>]
```

## DESCRIPTION
Convert Security ID (SID) to UserName

## EXAMPLES

### EXAMPLE 1
 ``` 
 Convert-BluGenieSID2UserName -SID S-1-5-21-544048806-3957405606-1151431920-500
 ``` 
 ```yam 
 This will return user 'Administrator' for the Security ID (SID)
 ``` 


## PARAMETERS

### SID
 ```yam 
 -SID <String>
    Security ID (SID) to be converted to UserName
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    
    Required?                    false
    Position?                    2
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



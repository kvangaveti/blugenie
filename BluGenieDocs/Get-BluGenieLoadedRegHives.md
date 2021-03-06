# Get-BluGenieLoadedRegHives

## SYNOPSIS
Query all loaded registry hives

## SYNTAX
```
Get-BluGenieLoadedRegHives [[-ReturnObject]] [[-Walkthrough]] [<CommonParameters>]
```

## DESCRIPTION
Query all loaded registry hives

## EXAMPLES

### EXAMPLE 1
 ``` 
 Get-BluGenieLoadedRegHives
 ``` 
 ```yam 
 This will return a list of all the loaded registry hives

- Sample Output -

UserName    : S-1-5-19
ProfilePath :
UserHive    : HKEY_USERS\S-1-5-19
UserFromSID : NT AUTHORITY\LOCAL SERVICE
LoadedShell : False

UserName    : S-1-5-20
ProfilePath :
UserHive    : HKEY_USERS\S-1-5-20
UserFromSID : NT AUTHORITY\NETWORK SERVICE
LoadedShell : False

UserName    : S-1-5-21-2041101783-1631109279-337038772-500
ProfilePath : C:\Users\Administrator.TESTLAB
UserHive    : HKEY_USERS\S-1-5-21-2041101783-1631109279-337038772-500
UserFromSID : TESTLAB\Administrator
LoadedShell : True

UserName    : S-1-5-18
ProfilePath :
UserHive    : HKEY_USERS\S-1-5-18
UserFromSID : NT AUTHORITY\SYSTEM
LoadedShell : False
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



# Set-BluGeniePostCommands

## SYNOPSIS
Set-BluGeniePostCommands is an add-on to manage the Post Command list in the BluGenie Console

## SYNTAX
```
Set-BluGeniePostCommands [[-Add] <String[]>] [[-Remove] <String[]>] [[-RemoveIndex] <Int32[]>] [-RemoveAll] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGeniePostCommands is an add-on to manage the Post Command list in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Set-BluGeniePostCommands
 ``` 
 ```yam 
 This will give you a list of identified Post Commands
 ``` 
 
### EXAMPLE 2
 ``` 
 Set-BluGeniePostCommands 'Get-SystemInfo'
 ``` 
 ```yam 
 This will add the specified Command to the Post Command list
 ``` 
 
### EXAMPLE 3
 ``` 
 Set-BluGeniePostCommands -Add 'Get-SystemInfo','Invoke-Netstat','Get-ProcessList'
 ``` 
 ```yam 
 This will add all of the specified Commands to the Post Command list
 ``` 
 
### EXAMPLE 4
 ``` 
 Set-BluGeniePostCommands -Remove '^G'
 ``` 
 ```yam 
 The -Remove command excepts (RegEx).  This will remove all items with a ( G ) as the first character
 ``` 
 
### EXAMPLE 5
 ``` 
 Set-BluGeniePostCommands -Remove 'Get-SystemInfo'
 ``` 
 ```yam 
 The -Remove command excepts (RegEx).  This will remove all items with 'Get-SystemInfo' in the name
 ``` 
 
### EXAMPLE 6
 ``` 
 Set-BluGeniePostCommands -Remove '^Get-SystemInfo$','^Get-ProcessList$'
 ``` 
 ```yam 
 The -Remove command excepts (RegEx).  This will remove all items with that have an exact match of the Post Command name
 ``` 
 
### EXAMPLE 7
 ``` 
 Set-BluGeniePostCommands -RemoveIndex 1
 ``` 
 ```yam 
 This will remove the first item in the Command list
 ``` 
 
### EXAMPLE 8
 ``` 
 Set-BluGeniePostCommands -RemoveIndex 1,10,12,15
 ``` 
 ```yam 
 This will remove all the items from the Command list that have the specified index value.

Note:  To get the Index value you can run ( Set-BluGeniePostCommands ).  This will show the Post Command list and the index values.
 ``` 
 
### EXAMPLE 9
 ``` 
 Set-BluGeniePostCommands -RemoveAll
 ``` 
 ```yam 
 This will remove all the items from the Post Command list
 ``` 


## PARAMETERS

### Add
 ```yam 
 -Add <String[]>
    Add items to the list
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Remove
 ```yam 
 -Remove <String[]>
    Remove items from the list
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveIndex
 ```yam 
 -RemoveIndex <Int32[]>
    Remove items from the list using the index value
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    3
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveAll
 ```yam 
 -RemoveAll [<SwitchParameter>]
    This will remove all items from the Post Commands List
    
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



# Set-BluGenieCommands

## SYNOPSIS
Set-BluGenieCommands is an add-on to manage the Command list in the BluGenie Console

## SYNTAX
```
Set-BluGenieCommands [[-Add] <String[]>] [[-Remove] <String[]>] [[-RemoveIndex] <Int32[]>] [-RemoveAll] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieCommands is an add-on to manage the Command list in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Set-BluGenieCommands
 ``` 
 ```yam 
 This will give you a list of identified Commands
 ``` 
 
### EXAMPLE 2
 ``` 
 Set-BluGenieCommands 'Get-SystemInfo'
 ``` 
 ```yam 
 This will add the specified Commands to the Command list
 ``` 
 
### EXAMPLE 3
 ``` 
 Set-BluGenieCommands -Add 'Get-SystemInfo','Invoke-Netstat','Get-ProcessList'
 ``` 
 ```yam 
 This will add all of the specified Commands to the Command list
 ``` 
 
### EXAMPLE 4
 ``` 
 Set-BluGenieCommands -Remove '^G'
 ``` 
 ```yam 
 The -Remove command excepts (RegEx).  This will remove all items with a ( G ) as the first character
 ``` 
 
### EXAMPLE 5
 ``` 
 Command -Remove 'Get-SystemInfo'
 ``` 
 ```yam 
 The -Remove command excepts (RegEx).  This will remove all items with 'Get-SystemInfo' in the name
 ``` 
 
### EXAMPLE 6
 ``` 
 Set-BluGenieCommands -Remove '^Get-SystemInfo$','^Get-ProcessList$'
 ``` 
 ```yam 
 The -Remove command excepts (RegEx).  This will remove all items with that have an exact match of the Command name
 ``` 
 
### EXAMPLE 7
 ``` 
 Set-BluGenieCommands -RemoveIndex 1
 ``` 
 ```yam 
 This will remove the first item in the Command list
 ``` 
 
### EXAMPLE 8
 ``` 
 Set-BluGenieCommands -RemoveIndex 1,10,12,15
 ``` 
 ```yam 
 This will remove all the items from the Command list that have the specified index value.

Note:  To get the Index value you can run (Set-BluGenieCommands).  This will show the Command list and the index values.
 ``` 
 
### EXAMPLE 9
 ``` 
 Set-BluGenieCommands -RemoveAll
 ``` 
 ```yam 
 This will remove all commands from the Command list
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
    Remove all commands from the Command list
    
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



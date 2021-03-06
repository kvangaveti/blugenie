# Set-BluGenieSystems

## SYNOPSIS
Set-BluGenieSystems is an add-on to manage the System list in the BluGenie Console

## SYNTAX
```
Set-BluGenieSystems [[-Add] <String[]>] [[-Remove] <String[]>] [[-RemoveIndex] <Int32[]>] [-RemoveAll] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieSystems is an add-on to manage the System list in the BluGenie Console

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieSystems
 ``` 
 ```yam 
 Description:  Use this command to identify any systems in the global systems catalogue
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Systems 'TestPC1'
 ``` 
 ```yam 
 Description: Use this short-hand alias to add a single computer to the global systems catalogue
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Systems -Add 'TestPC1','TestPC2','10.20.136.50','10.20.136.50'
 ``` 
 ```yam 
 Description:  Use this command to add multiple computers (Using Host Names and IP Addresses) to the global systems catalogue
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Systems 'file:.\collections\systems.txt'
 ``` 
 ```yam 
 Description:  Use this command to parse a file for a list of systems to add to the global systems catalogue
Notes: A File is identified by using the "File:" prefix
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Systems 'group:S_Wrk_Posh3Systems'
 ``` 
 ```yam 
 Description: Use this command to parse a Domain Group for a list of systems to add to the global systems catalogue
Notes: A Group is identified by using the "Group:" prefix
            If no domain is specified the domain is pulled from the local registry
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Systems 'group:S_Wrk_Posh3Systems:TestLab.com'
 ``` 
 ```yam 
 Description: Use this command to parse a domain group with a specific domain name and add systems to the global systems catalogue
Notes: Append the ":<Domain.com>" to the end of the Group name
            If no domain is specified the domain is pulled from the local registry
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Systems -Remove ^\d
 ``` 
 ```yam 
 Description: Use this command to remove all items with a digit as the first character of the name from the global systems catalogue
Notes: The -Remove command excepts (RegEx).
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: System -Remove Test
 ``` 
 ```yam 
 Description: Use this command to remove all items with Test in the name from the global systems catalogue
Notes: The -Remove command excepts (RegEx).
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Systems -Remove '^TestPC1$','^TestPC2$'
 ``` 
 ```yam 
 Description: Use this command to remove all items that have an exact match of the system name from the global systems catalogue
Notes: The -Remove command excepts (RegEx).
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Systems -RemoveIndex 1
 ``` 
 ```yam 
 Description: Use this command to remove the first item in the global systems catalogue
Notes:
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Systems -RemoveIndex 1,10,12,15
 ``` 
 ```yam 
 Description: Use this command to remove specific index items from the global systems catalogue
Notes: To get the Index value you can run (Set-BluGenieSystems).  This will show the system list and the index values.
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Systems -RemoveAll
 ``` 
 ```yam 
 Description: Use this command to remove all the systems from the global systems catalogue
Notes:
 ``` 


## PARAMETERS

### Add
 ```yam 
 -Add <String[]>
    Description: Add computer objects to the global systems catalogue
    Notes:  To parse a file for a list of computers use the "File:" prefix
                o Example: file:.\collections\systems.txt
            To parse a domain group for a list of computers use the "Group:" prefix
                o Example: group:S_Wrk_Posh3Systems
            To parse a domain group with a specific domain name, append to the end of the Group name ":Domain.com"
                o Example: group:S_Wrk_Posh3Systems:TestLab.com
                o Note:  The domain needs to be a trusted domain and the account running this command needs to have access to it.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Remove
 ```yam 
 -Remove <String[]>
    Description: Remove a specific computer object from the global systems catalogue
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveIndex
 ```yam 
 -RemoveIndex <Int32[]>
    Description: Remove a specific index from the global systems catalogue using an index value
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveAll
 ```yam 
 -RemoveAll [<SwitchParameter>]
    Description: Remove all system objects from the global systems catalogue
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



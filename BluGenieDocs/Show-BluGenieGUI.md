# Show-BluGenieGUI

## SYNOPSIS
Show the advanced Graphical API Toolkit for BluGenie

## SYNTAX
```
Show-BluGenieGUI [-Detach] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Show the advanced Graphical API Toolkit for BluGenie

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Show-BluGenieGUI
 ``` 
 ```yam 
 Description: Show the advanced Graphical API Toolkit for BluGenie
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Show-GUI
 ``` 
 ```yam 
 Description: Alias 1 - Show the advanced Graphical API Toolkit for BluGenie
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: GUI
 ``` 
 ```yam 
 Description: Alias 2 - Show the advanced Graphical API Toolkit for BluGenie
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Show-BluGenieGUI -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Show-BluGenieGUI -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### Detach
 ```yam 
 -Detach [<SwitchParameter>]
    Description:  Start the Graphical interface in a new process so BluGenie is free to use at the same time.
    Notes:  
    Alias: Help
    ValidateSet:
    
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



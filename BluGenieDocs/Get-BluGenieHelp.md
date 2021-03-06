# Get-BluGenieHelp

## SYNOPSIS
Get-BluGenieHelp is a Blugenie Internal Function to Dynamically Pull and Display Synopsis Information for all of BluGenies Functions

## SYNTAX
```
Get-BluGenieHelp [[-Search] <String>] [-Force] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Get-BluGenieHelp is a Blugenie Internal Function to Dynamically Pull and Display Synopsis Information for all of BluGenies Functions

To speed up this informational query a Help Index file is created --> $ScriptDirectory\Tools\Blubin\HelpMnu.dat
If this file doesn't exist, Once help is called it will be created before displaying the information.

You can also do quick searches on the Commands and Discriptions using RegEx.  Check the Examples for more information.

In BluGenie all references will be made using the follow command --> /Help
In BluGenie all references will be made using the follow command --> /Help:<Search String>
In BluGenie all references will be made using the follow command --> BluGenie.exe /Help
In BluGenie all references will be made using the follow command --> BluGenie.exe /Help:<Search String>
In BluGenie all references will be made using the follow command --> BluGenie.exe "/Help:<Search String>"

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: /Help
 ``` 
 ```yam 
 Description: Display general help while in the BluGenie Console
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: /help:enable
 ``` 
 ```yam 
 Description: Display help with (enable) in either the command or the synopsis
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: "/help:enable firewall"
 ``` 
 ```yam 
 Description: Display help with (enable firewall) in the synopsis field
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: BluGenie.exe /help
 ``` 
 ```yam 
 Description: Display general help and exit the program
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: BluGenie.exe /help:enable
 ``` 
 ```yam 
 Description: Display help with (enable) in either the command or the synopsis
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: BluGenie.exe "/help:enable firewall"
 ``` 
 ```yam 
 Description: Display help with (enable firewall) in the synopsis field
Notes:
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieHelp -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieHelp -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### Search
 ```yam 
 -Search <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Force
 ```yam 
 -Force [<SwitchParameter>]
    
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



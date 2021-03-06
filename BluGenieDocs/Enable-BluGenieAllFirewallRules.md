# Enable-BluGenieAllFirewallRules

## SYNOPSIS
Enable Firewall Rule(s)

## SYNTAX
```
Enable-BluGenieAllFirewallRules [[-Walkthrough]] [[-ReturnObject]] [[-OutUnEscapedJSON]] [<CommonParameters>]
```

## DESCRIPTION
Enable Firewall Rule(s) that have been posted to (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules).

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Enable-BluGenieAllFirewallRules
 ``` 
 ```yam 
 Description: This will Enable all Windows Firewall Rules that have been posted to (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules).
Notes: The (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules[DisabledFWRFlag]) Registry key Flag will also be removed
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Enable-BluGenieAllFirewallRules -Help
 ``` 
 ```yam 
 Description: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Enable-BluGenieAllFirewallRules -WalkThrough
 ``` 
 ```yam 
 Description: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Enable-BluGenieAllFirewallRules -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Enable-BluGenieAllFirewallRules -ReturnObject
 ``` 
 ```yam 
 Description: The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
Notes:
 ``` 


## PARAMETERS

### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    Description:  Start the dynamic help menu system to help walk through the current command and all of the parameters
    Notes:  
    Alias: Help
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ReturnObject
 ```yam 
 -ReturnObject [<SwitchParameter>]
    Description: Return information as an Object
    Notes: By default the data is returned as a Hash Table
    Alias: 
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutUnEscapedJSON
 ```yam 
 -OutUnEscapedJSON [<SwitchParameter>]
    Description: Removed UnEsacped Char from the JSON information.
    Notes: This will beautify json and clean up the formatting.
    Alias: 
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



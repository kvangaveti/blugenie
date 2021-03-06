# Disable-BluGenieAllFirewallRules

## SYNOPSIS
Disable Firewall Rule(s)

## SYNTAX
```
Disable-BluGenieAllFirewallRules [[-Force]] [[-Walkthrough]] [[-ReturnObject]] [[-OutUnEscapedJSON]] [<CommonParameters>]
```

## DESCRIPTION
Disable Firewall Rule(s) without removing them and backup the data to (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules).

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Disable-BluGenieAllFirewallRules
 ``` 
 ```yam 
 Description: Disable all ( Enabled ) Windows Firewall Rules
Notes: If the (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules[DisabledFWRFlag]) key exists, the process will be skipped
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Disable-BluGenieAllFirewallRules -Force
 ``` 
 ```yam 
 Description: Forcefully disable all ( Enabled ) Windows Firewall Rules
Notes: This will bypass the (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules[DisabledFWRFlag]) key.
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Disable-BluGenieAllFirewallRules -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Disable-BluGenieAllFirewallRules -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Disable-BluGenieAllFirewallRules -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Disable all ( Enabled ) Windows Firewall Rules.  Return Output as UnEscaped JSON
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Disable-BluGenieAllFirewallRules -ReturnObject
 ``` 
 ```yam 
 Description: Disable all ( Enabled ) Windows Firewall Rules.  Return Output as Objects
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### Force
 ```yam 
 -Force [<SwitchParameter>]
    Description: Force will override the default flag, which will allow the process to run even though the (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules[DisabledFWRFlag]) key exists.
    Notes:  This will not remove the (HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\FirewallRules[DisabledFWRFlag]) flag.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
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
    Position?                    3
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
    Position?                    4
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
    Position?                    5
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



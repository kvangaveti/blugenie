# Enable-BluGenieFirewallRule

## SYNOPSIS
Enable Firewall Rule(s)

## SYNTAX
```
Enable-BluGenieFirewallRule [[-RuleName] <String[]>] [[-Walkthrough]] [[-ReturnObject]] [[-OutUnEscapedJSON]] [<CommonParameters>]
```

## DESCRIPTION
Enable Firewall Rule(s)

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Enable-BluGenieFirewallRule -Name Agent_445_Inbound_TCP
 ``` 
 ```yam 
 Description: This will enable the firewall rule Agent_445_Inbound_TCP
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Enable-BluGenieFirewallRule -Name 'Agent_445_Inbound_TCP,Agent_445_Inbound_UDP'
 ``` 
 ```yam 
 Description: This will enable the firewall rule Agent_445_Inbound_TCP
Notes: The rules are in a String format using a comma delimiter.  You can also use an array.
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Enable-BluGenieFirewallRule -Name 'Agent_445_Inbound_TCP','Agent_445_Inbound_UDP'
 ``` 
 ```yam 
 Description: This will enable the firewall rule Agent_445_Inbound_TCP
Notes: The rules are in an Array format.  You can also use a String format using a comma delimiter
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Enable-BluGenieFirewallRule -Help
 ``` 
 ```yam 
 Description: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Enable-BluGenieFirewallRule -WalkThrough
 ``` 
 ```yam 
 Description: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Enable-BluGenieFirewallRule -Name Agent_445_Inbound_TCP -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: This will enable the firewall rule Agent_445_Inbound_TCP
Notes: The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Enable-BluGenieFirewallRule -Name Agent_445_Inbound_TCP -ReturnObject
 ``` 
 ```yam 
 Description: This will enable the firewall rule Agent_445_Inbound_TCP
Notes: The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### RuleName
 ```yam 
 -RuleName <String[]>
    Description: The name of the Firewall Rule(s) to be enable
    Notes: Can be a sinlge rule, multiple rules broken up by a comma, or an array of rule names
    Alias: Name
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
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
    Position?                    2
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
    Position?                    3
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
    Position?                    4
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



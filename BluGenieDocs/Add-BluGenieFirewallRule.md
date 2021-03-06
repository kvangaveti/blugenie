# Add-BluGenieFirewallRule

## SYNOPSIS
Add Windows Firewall Rule(s) from a Rule configuration file

## SYNTAX
```
Add-BluGenieFirewallRule [[-RuleName] <String[]>] [[-Walkthrough]] [[-ReturnObject]] [[-OutUnEscapedJSON]] [<CommonParameters>]
```

## DESCRIPTION
Add Windows Firewall Rule(s) from a Rule configuration file

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Add-BluGenieFirewallRule -RulePath 'Agent_445_Inbound_TCP'
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP rules from the Script Directory to the Windows Firewall Rule list.
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Add-BluGenieFirewallRule -RulePath 'Agent_445_Inbound_TCP,Agent_445_Inbound_UDP'
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP and Agent_445_Inbound_UDP rules from the Script Directory to the Windows Firewall Rule list.
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Add-BluGenieFirewallRule -RulePath 'Agent_445_Inbound_TCP','Agent_445_Inbound_UDP'
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP and Agent_445_Inbound_UDP rules from the Script Directory to the Windows Firewall Rule list.
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Add-BluGenieFirewallRule -RuleName 'C:\Windows\Temp\BGAgent_445_Inbound_TCP.RULE'
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP rules from the C:\Windows\Temp\<Rule_Config> to the Windows Firewall Rule list.
Notes:  The rules are in JSON format
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Add-BluGenieFirewallRule -RuleName 'C:\Windows\Temp\BGAgent_445_Inbound_TCP.RULE,C:\Windows\Temp\BGAgent_445_Inbound_UDP.RULE'
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP and Agent_445_Inbound_UDP rules from the C:\Windows\Temp\<Rule_Config> to the Windows Firewall Rule list.
Notes:  These rules are in JSON format and also note the the rule names are in a sinlge string seperated by a comma.  The parameter can also use an array "<rule1>","<rule2>"
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Add-BluGenieFirewallRule -RuleName 'C:\Windows\Temp\BGAgent_445_Inbound_TCP.RULE','C:\Windows\Temp\BGAgent_445_Inbound_UDP.RULE'
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP and Agent_445_Inbound_UDP rules from the C:\Windows\Temp\<Rule_Config> to the Windows Firewall Rule list.
Notes:  These rules are in JSON format and also note the the rule names are in an array "<rule1>","<rule2>".  The parameter can also use a single string with a comma delimiter.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Add-BluGenieFirewallRule -Help
 ``` 
 ```yam 
 Description: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
Notes: Snippet to add to your script function (Read the #region WalkThrough (Dynamic Help)) as part of this script.  Make sure to add both the snippet and the parameter to your function.
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Add-BluGenieFirewallRule -WalkThrough
 ``` 
 ```yam 
 Description: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
Notes: Snippet to add to your script function (Read the #region WalkThrough (Dynamic Help)) as part of this script.  Make sure to add both the snippet and the parameter to your function.
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Add-BluGenieFirewallRule -RuleName 'C:\Windows\Temp\BGAgent_445_Inbound_TCP.RULE' -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP rules from the C:\Windows\Temp\<Rule_Config> to the Windows Firewall Rule list.
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Add-BluGenieFirewallRule -RuleName 'C:\Windows\Temp\BGAgent_445_Inbound_TCP.RULE' -ReturnObject
 ``` 
 ```yam 
 Description: This will add the Agent_445_Inbound_TCP rules from the C:\Windows\Temp\<Rule_Config> to the Windows Firewall Rule list.
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### RuleName
 ```yam 
 -RuleName <String[]>
    Description: Full Path to a New Firewall Rule (.Rule) file.
    Notes: This can be more than one file, seperated with a comma (,) or an array of strings
    Alias: 
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
    Position?                    2
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



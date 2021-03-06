# Get-BluGenieADGroups

## SYNOPSIS
Query for Active Directory Groups via LDAP without the need for RSAT to be installed.

## SYNTAX
```
Get-BluGenieADGroups [[-GroupName] <String>] [[-Domain] <String>] [-FullDetails] [-UseCache] [[-CachePath] <String>] [[-CacheFileName] <String>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Query for Active Directory Groups via LDAP without the need for RSAT to be installed.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BGADGroups -ReturnObject
 ``` 
 ```yam 
 Description: Use this command to Query AD for all Groups and return the instances as a PowerSehll object
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BGADGroups -ReturnObject -GroupName Administrator
 ``` 
 ```yam 
 Description: Use this command to query AD for any group with a name that matches 'Administrator'
Notes:  The GroupName property is filtered using RegEx
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BGADGroups -ReturnObject -UseCache
 ``` 
 ```yam 
 Description: Use this command to save all found groups in AD to a file on disk
Notes: The file is saved by default to $Env:temp with a prefix of BG_ADGroups_<GUID>
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BGADGroups -ReturnObject -UseCache -FormatView JSON -
 ``` 
 ```yam 
 Description: Use this command to save the output to JSON format
Notes: The default format is (CSV).  Options are JSON, YAML, and CSV
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BGADGroups -ReturnObject -UseCache -FormatView Yaml -CachePath C:\Temp -CacheFileName ADGroupInfo
 ``` 
 ```yam 
 Description: Use this command to save the output as Yaml to a file located -> C:\Temp\ADGroupInfo.yaml
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BGADGroups -ReturnObject -UseCache -FullDetails
 ``` 
 ```yam 
 Description: Use this command to query the the full list of Group Object Properties
Notes: The default is (name, distinguishedname, and path).  The full list of Properties are as follows
        o name
        o distinguishedname
        o path
        o objectcategory
        o usnchanged
        o grouptype
        o whencreated
        o samaccountname
        o description
        o instancetype
        o adspath
        o samaccounttype
        o objectsid
        o whenchanged
        o objectguid
        o member
        o cn
        o usncreated
        o admincount
        o iscriticalsystemobject
        o objectclass
        o systemflags
        o dscorepropagationdata
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BGADGroups -OutYaml -Verbose
 ``` 
 ```yam 
 Description: Use this command to view a full detailed yaml report on AD Groups and function details
Notes:
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieADGroups -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieADGroups -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Get-BGADGroups -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a detailed function report in an UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Get-BGADGroups -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Get-BGADGroups -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
        This parameter is also used with the FormatView
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Get-BGADGroups -ReturnObject -FormatView Yaml
 ``` 
 ```yam 
 Description: Output PSObject information in Yaml format
Notes:  Current formats supported by default are ('Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml')
        Default is set to (None) and normal PSObject.
 ``` 


## PARAMETERS

### GroupName
 ```yam 
 -GroupName <String>
    Description: The name of the Group you are looking for
    Notes: This is a regex managed pattern.  The default is (.*) for all Groups
    Alias: GN
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                .*
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Domain
 ```yam 
 -Domain <String>
    Description: The name of the Domain in which you are looking for the Group and Member information
    Notes: The default domain name is pulled from the Registry.  If this option is not set or the domain
    name is not found in the registry the return is Null
    Alias: DO
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                $(Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\History' -Name 'MachineDomain' -ErrorAction SilentlyContinue | Select-Object -ExpandProperty 'MachineDomain')
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### FullDetails
 ```yam 
 -FullDetails [<SwitchParameter>]
    Description: Return a PSObject with the following values (Name, SAMAccountname, DisplayName, Description and the Path)
    Notes: The default return is a list of Names (ONLY)
    Alias: FD
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### UseCache
 ```yam 
 -UseCache [<SwitchParameter>]
    Description: Cache found objects to disk
    Notes: By default the Cache location is %temp%
    Alias: UC
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### CachePath
 ```yam 
 -CachePath <String>
    Description: Path to store the Cache information
    Notes: By default the Cache location is %temp% with a BG_ADGroups_<GUID>.txt file name.
                Example: C:\Users\ADMINI~1\AppData\Local\Temp\BGSys_46964-41870-29555-35418-93311.txt
    Alias: CP
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                $env:temp
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### CacheFileName
 ```yam 
 -CacheFileName <String>
    
    Required?                    false
    Position?                    4
    Default value                $('BG_ADGroups_{0}' -f $(New-BluGenieUID))
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
### ReturnObject
 ```yam 
 -ReturnObject [<SwitchParameter>]
    Description: Return information as an Object
    Notes: By default the data is returned as a Hash Table
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutUnEscapedJSON
 ```yam 
 -OutUnEscapedJSON [<SwitchParameter>]
    Description: Remove UnEsacped Char from the JSON information.
    Notes: This will beautify json and clean up the formatting.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutYaml
 ```yam 
 -OutYaml [<SwitchParameter>]
    Description: Return detailed information in Yaml Format
    Notes: Only supported in Posh 3.0 and above
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### FormatView
 ```yam 
 -FormatView <String>
    Description: Automatically format the Return Object
    Notes: Yaml is only supported in Posh 3.0 and above
    Alias:
    ValidateSet: 'Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml'
    
    Required?                    false
    Position?                    5
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



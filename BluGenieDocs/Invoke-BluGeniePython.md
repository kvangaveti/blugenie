# Invoke-BluGeniePython

## SYNOPSIS
Invoke-BluGeniePython will enable a BluGenie Managed Portable version of Python

## SYNTAX
```
Invoke-BluGeniePython [-Reset] [-Remove] [[-PYFile] <String>] [-Console] [-WinPyConsole] [-ClearGarbageCollecting] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Invoke-BluGeniePython will enable a BluGenie Managed Portable version of Python

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Invoke-BluGeniePython
 ``` 
 ```yam 
 Description:  Use this command to Setup the Blugenie Managed version of Python
Notes:  This will not change the default Python if one is installed.
        However any internal BluGenie calls to Python will go to the BluGenie Managed Version and not the default.
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Invoke-BluGeniePython -Remove
 ``` 
 ```yam 
 Description:  Use this command to remove the Blugenie Managed version of Python
Notes:  This will not change the default Python if one is installed.
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Invoke-BluGeniePython -Reset
 ``` 
 ```yam 
 Description:  Use this command to reset the BluGenie Managed version of Python to it's default environment state.
Notes:  This command can also Setup the BluGenie Managed version of Python if it's not installed already.
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Invoke-BluGeniePython -PYFile C:\Windows\Temp\MyTest.py
 ``` 
 ```yam 
 Description: Use this command to run a specifc Python script file
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Invoke-BluGeniePython -PYFile C:\Windows\Temp\MyTest.py -ReturnObject
 ``` 
 ```yam 
 Description:  Use this command to return the STDOut from the Python script as an Object.
Notes:  The Property name is called ( ProcessAction )
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Invoke-BluGeniePython -PYFile C:\Windows\Temp\MyTest.py -ReturnObject | Select-Object -ExpandProperty ProcessAction
 ``` 
 ```yam 
 Description:  Use this command to return only the STDOut from the Python script.
Notes:  The Property name ( ProcessAction ) is expanded to only return the value.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Invoke-BluGeniePython -Console
 ``` 
 ```yam 
 Description:  Use this command to show the Console of the BluGenie Managed verison of Python
Notes:  You can use the Console to edit the BluGenie Managed version of Python or run command Python commands and scripts.
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Invoke-BluGeniePython -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Invoke-BluGeniePython -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Invoke-BluGeniePython -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return a detailed function report in an UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Invoke-BluGeniePython -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Invoke-BluGeniePython -ReturnObject
 ``` 
 ```yam 
 Description: Return Output as a Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
        This parameter is also used with the FormatView
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Invoke-BluGeniePython -ReturnObject -FormatView Yaml
 ``` 
 ```yam 
 Description: Output PSObject information in Yaml format
Notes:  Current formats supported by default are ('Table','Custom','CustomModified','None','JSON','OutUnEscapedJSON','CSV', 'Yaml')
        Default is set to (None) and normal PSObject.
 ``` 


## PARAMETERS

### Reset
 ```yam 
 -Reset [<SwitchParameter>]
    Description: Reset the BluGenie Managed Python to a predetermined (clean state)
    Notes:  Any changes to the current BluGenie Managed Python will be lost.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Remove
 ```yam 
 -Remove [<SwitchParameter>]
    Description:  Remove the BluGenie Managed Python from disk
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### PYFile
 ```yam 
 -PYFile <String>
    Description: Path to a Python Script
    Notes:  When running a Python Script Invoke-BluGeniePython will wait for the script to finish and return any information captured
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Console
 ```yam 
 -Console [<SwitchParameter>]
    Description: Open up the current BluGenie Managed Python Console
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### WinPyConsole
 ```yam 
 -WinPyConsole [<SwitchParameter>]
    Description: Open up the current BluGenie Managed WinPython Command Prompt
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ClearGarbageCollecting
 ```yam 
 -ClearGarbageCollecting [<SwitchParameter>]
    Description: Garbage Collection in Powershell to Speed up Scripts and help lower memory consumption
    Notes: This is enabled by default.  To disable use -ClearGarbageCollecting:$False
    Alias:
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
    Position?                    2
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



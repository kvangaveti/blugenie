# Set-BluGenieSessionInfo

## SYNOPSIS
Set-BluGenieSessionInfo will set a Current Session Environment varialbe to be passed to each new PSSession Runspace automatically

## SYNTAX
```
Set-BluGenieSessionInfo [[-CaptureVarName] <String>] [[-EnvVarName] <String>] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Set-BluGenieSessionInfo will set a Current Session Environment varialbe to be passed to each new PSSession Runspace automatically.

All System variables will be removed once all Child and Parent sessions are closed.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Set-BluGenieSessionInfo
 ``` 
 ```yam 
 Description: Capture the Default BluGenie Session variables in to an Environement variable named BGSessionInfo
Notes:
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Set-BluGenieSessionInfo -CaptureVarName 'TestVar' -EnvVarName 'NewSesson'
 ``` 
 ```yam 
 Description: Capture the Variable TestVar in to a System Variable named NewSession
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Set-SessionInfo
 ``` 
 ```yam 
 Description: Capture the Default BluGenie Session variables in to an Environement variable named BGSessionInfo
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Set-SessionInfo -CaptureVarName '^BG.*'
 ``` 
 ```yam 
 Description: Capture all variables that start with BG in to an Environement variable named BGSessionInfo
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Set-SessionInfo
 ``` 
 ```yam 
 Start-Job -Name 'Job1' -InitializationScript { Import-Module BluGenie; New-BluGenieSessionInfo } -ScriptBlock { Get-Module; Write-Host "`n`nTransDir = $TranscriptsDir" }
            Receive-Job -Name 'Job1' -KeepDescription: Capture the default BluGenie session variables, Create a new job, and Initialize the variables in the new session.
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Set-BluGenieSessionInfo -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Set-BluGenieSessionInfo -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### CaptureVarName
 ```yam 
 -CaptureVarName <String>
    Description: Define which Current Session variables will be captured into a Current System Variable 
    Notes:  This String is parsed as RegEx.
    
            The default values are as follows
            BGMemory
            BGNoBanner
            BGNoExit
            BGNoSetRes
            BGRemoveMods
            BGUpdateMods
            ConsoleDebug
            ConsoleJobTimeout
            ConsolePrompt
            ConsoleThreadCount
            ConsoleTrap
            CurTool
            ErrTrap
            LibVersion
            ScriptBasename
            ScriptDirectory
            ScriptFullName
            ToolsConfig
            ToolsConfigFile
            ToolsDirectory
            TranscriptsDir
            TranscriptsFile
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                BGMemory|BGNoBanner|BGNoExit|BGNoSetRes|BGRemoveMods|BGUpdateMods|
    ConsoleDebug|ConsoleJobTimeout|ConsolePrompt|ConsoleThreadCount|ConsoleTrap|CurTool|ErrTrap|LibVersion|ScriptBasename|
    ScriptDirectory|ScriptFullName|ToolsConfig|ToolsConfigFile|ToolsDirectory|TranscriptsDir|TranscriptsFile|BGJSONJob
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### EnvVarName
 ```yam 
 -EnvVarName <String>
    Description: Name of the Current Systems Envinroment Variable
    Notes: The default is 'BGSessionInfo'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                BGSessionInfo
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



# Get-BluGenieFileSnapshot

## SYNOPSIS
Get-BluGenieFileSnapshot takes a snapshot of the requested direcotry path

## SYNTAX
```
Get-BluGenieFileSnapshot [[-Path] <String>] [[-Walkthrough]] [[-ReturnObject]] [[-LeaveFile]] [[-OutUnEscapedJSON]] [[-Recurse]] [<CommonParameters>]
```

## DESCRIPTION
Get-BluGenieFileSnapshot takes a snapshot of the requested direcotry path.  This can be the parent directory and / or a recursive sub directory snapshot.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Get-BluGenieFileSnapshot
 ``` 
 ```yam 
 This will output nothing.  If the Path is empty the command will Return $Null
 ``` 
 
### EXAMPLE 2
 ``` 
 Get-BluGenieFileSnapshot -Path 'C:\Windows\System32\Temp'
 ``` 
 ```yam 
 This will only take a file and directory Snapshot of the root directory defined 'C:\Windows\System32\Temp'
 ``` 
 
### EXAMPLE 3
 ``` 
 Get-BluGenieFileSnapshot -Path 'C:\Windows\System32\Temp' -Recurse
 ``` 
 ```yam 
 This will take a file and directory Snapshot of the root directory and all sub dictories for the path defined 'C:\Windows\System32\Temp'
 ``` 
 
### EXAMPLE 4
 ``` 
 Get-BluGenieFileSnapshot -Path 'C:\Windows\System32\Temp' -ReturnObject
 ``` 
 ```yam 
 This will only take a file and directory Snapshot of the root directory defined 'C:\Windows\System32\Temp'
and return just the Object content

Note:  The default output is a HashTable
 ``` 
 
### EXAMPLE 5
 ``` 
 Get-BluGenieFileSnapshot -Path 'C:\Windows\System32\Temp' -LeaveFile
 ``` 
 ```yam 
 This will only take a file and directory Snapshot of the root directory defined 'C:\Windows\System32\Temp'

The file is saved by default to the %WinDir%\Temp directory, the fil ename is saved as a GUID with no ext.
 ``` 
 
### EXAMPLE 6
 ``` 
 Get-BluGenieFileSnapshot -Path 'AllUsers\Desktop'
 ``` 
 ```yam 
 This will take a file and directory Snapshot of the each users Desktop direcotory
 ``` 
 
### EXAMPLE 7
 ``` 
 Get-BluGenieFileSnapshot -Path 'Temp' -Recurse
 ``` 
 ```yam 
 This will take a file and directory Snapshot of the each users Temp direcotory and snapshot all sub files and directories as well.
 ``` 
 
### EXAMPLE 8
 ``` 
 Get-BluGenieFileSnapshot -Path 'C:\Windows\System32\Temp' -OutUnEscapedJSON
 ``` 
 ```yam 
 This will only take a file and directory Snapshot of the root directory defined 'C:\Windows\System32\Temp'

The return data will be in a beautified json format
 ``` 


## PARAMETERS

### Path
 ```yam 
 -Path <String>
    The path to the parent directory
    
    If you specify "Temp" in the begining of the Path field all the %SystemDrive%\Users\* Temp directories will be prefixed to the rest of the path and a snapshot will be taken for each Path
    If you specify "AllUsers" in the begining of the Path field, all the User Profiles directories from %SystemDrive%\Users will be prefixed to the rest of the path and a snapshot will be taken for each Path
    
        Example:  -Path 'AllUsers\AppData\Roaming'
    
        Output:   C:\Users\Administrator\AppData\Roaming
                    C:\Users\User1\AppData\Roaming
                    C:\Users\User2\AppData\Roaming
                    C:\Users\User3\AppData\Roaming
                    C:\Users\User4\AppData\Roaming
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    An automated process to walk through the current function and all the parameters
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    2
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ReturnObject
 ```yam 
 -ReturnObject [<SwitchParameter>]
    Return information as an Object.
    By default the data is returned as a Hash Table
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    3
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### LeaveFile
 ```yam 
 -LeaveFile [<SwitchParameter>]
    Do not remove snapshot file.
    By default the data is saved as a GUID in the system temp directory
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    4
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutUnEscapedJSON
 ```yam 
 -OutUnEscapedJSON [<SwitchParameter>]
    Removed UnEsacped Char from the JSON Return.
    This will beautify json and clean up the formatting.
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    5
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Recurse
 ```yam 
 -Recurse [<SwitchParameter>]
    Recurse through subdirectories
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    5
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



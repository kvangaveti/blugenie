# Get-BluGenieLockingProcess

## SYNOPSIS
Report on which process is locking the file or directory

## SYNTAX
```
Get-BluGenieLockingProcess [[-Path] <String[]>] [[-ToolPath] <String>] [[-Algorithm] <String>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-FormatView <String>] [<CommonParameters>]
```

## DESCRIPTION
Report on which process is locking the file or directory

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log'
 ``` 
 ```yam 
 Description: Show the Process locking the file given
Notes: 
- Sample Output -
           LockedPath        : C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log                     
ProcessId         : 8020                                                                      
Name              : OneDrive.exe                                                              
CommandLine       : "C:\Users\Admin\AppData\Local\Microsoft\OneDrive\OneDrive.exe" /background
SessionId         : 1                                                                         
Path              : C:\Users\Admin\AppData\Local\Microsoft\OneDrive\OneDrive.exe              
Hash              : 78e5e5f44cc67195278179cd60453ec8                                          
ProcessOwner      : Admin                                                             
Caption           : OneDrive.exe                                                              
ParentProcessId   : 5792                                                                      
ParentProcessName : explorer                                                                  
ParentProcessPath : C:\Windows\Explorer.EXE                                                   
ParentHash        : 4e196cea0c9c46a7d656c67e52e8c7c7                                          
Comment           :
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log,C:\Users\Admin\AppData\Local\Temp'
 ``` 
 ```yam 
 Description: Show the Process locking the paths in a sinlge string using a comma separator
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log','C:\Users\Admin\AppData\Local\Temp'
 ``` 
 ```yam 
 Description: Show the Process locking the paths in an Array
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log' -ReturnObject:$False
 ``` 
 ```yam 
 Description: Reset the default output to a Hash Table
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log' -ToolPath 'C:\Temp\Handle.exe'
 ``` 
 ```yam 
 Description: Locate the Handle.exe tool in C:\Temp and Show the Process locking the file given
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieLockingProcess -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
               Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieLockingProcess -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
               Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Users\Admin\AppData\Local\Temp\aria-debug-8020.log' -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Show the Authentication Handle Information and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieLockingProcess -Path 'C:\Windows\Notepad.exe' -ReturnObject
 ``` 
 ```yam 
 Description: Show the Authentication Handle Information and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  This is the default option
 ``` 


## PARAMETERS

### Path
 ```yam 
 -Path <String[]>
    Description: Path (file or directory)
    Notes:  This can be an Array, a single path, or a single string with a comma separator
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ToolPath
 ```yam 
 -ToolPath <String>
    Description: Path to the Handle.exe SysInternals Utility
    Notes: The default ToolPath is ( .\Tools\SysinternalsSuite ) with a backup path of ( $env:Windir\Temp ) 
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Algorithm
 ```yam 
 -Algorithm <String>
    Description:  Specifies the cryptographic hash to use for computing the hash value of the contents of the specified file. 
    Notes:  The acceptable values for this parameter are:
    
                - SHA1
                - SHA256
                - SHA384
                - SHA512
                - MACTripleDES
                - MD5 = (Default)
                - RIPEMD160
    Alias: 
    ValidateSet: 'MACTripleDES','MD5','RIPEMD160','SHA1','SHA256','SHA384','SHA512'
    
    Required?                    false
    Position?                    4
    Default value                MD5
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
    Notes: This is set to $true by default.  To change to false run -ReturnObject:$false
    Alias: 
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                True
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
### FormatView
 ```yam 
 -FormatView <String>
    
    Required?                    false
    Position?                    named
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



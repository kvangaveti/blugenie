# Get-BluGenieSignature

## SYNOPSIS
Report on the Files Authenication Signature Information

## SYNTAX
```
Get-BluGenieSignature [[-Path] <String[]>] [[-ToolPath] <String>] [[-Algorithm] <String>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [<CommonParameters>]
```

## DESCRIPTION
Report on the Files Authenication Signature Information

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe'
 ``` 
 ```yam 
 Description: Show the Authentication Signature Information for the file given
Notes:
- Sample Output -
        Comment         :
        Path            : c:\windows\system32\cmd.exe
        File Version    : 10.0.17134.1 (WinBuild.160101.0800)
        Description     : Windows Command Processor
        Product Version : 10.0.17134.1
        Date            : 5:16 PM 4/11/2018
        Company         : Microsoft Corporation
        Publisher       : Microsoft Windows
        Verified        : Signed
        Product         : Microsoft® Windows® Operating System
        Machine Type    : 64-bit
        Hash            : 4e2acf4f8a396486ab4268c94a6a245f
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe,C:\Windows\system32\cmd.exe'
 ``` 
 ```yam 
 Description: Show the Authentication Signature Information for the file(s) in a sinlge string using a comma separator
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe','C:\Windows\system32\cmd.exe'
 ``` 
 ```yam 
 Description: Show the Authentication Signature Information for the file(s) in an Array
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe' -ReturnObject:$False
 ``` 
 ```yam 
 Description: Reset the default output to a Hash Table
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe' -ToolPath 'C:\Temp\SigCheck.exe'
 ``` 
 ```yam 
 Description: Locate the SigCheck.exe tool in C:\Temp and Show the Authentication Signature Information for Notepad.exe
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieSignature -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieSignature -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe' -ReturnObject:$False -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Show the Authentication Signature Information and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieSignature -Path 'C:\Windows\Notepad.exe' -ReturnObject
 ``` 
 ```yam 
 Description: Show the Authentication Signature Information and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  This is the default option
 ``` 


## PARAMETERS

### Path
 ```yam 
 -Path <String[]>
    Description: Path to the file(s) to determine the Signature Information
    Notes:
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
    Description: Path to the SigCheck.exe SysInternals Utility
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



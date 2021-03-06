# Get-BluGenieCOMObjectInfo

## SYNOPSIS
Get-BluGenieCOMObjectInfo will query for possible COM Object HiJacking.

## SYNTAX
```
Get-BluGenieCOMObjectInfo [[-FilterType] <String>] [[-Pattern] <String>] [[-COMType] <String>] [[-Algorithm] <String>] [-NotMatch] [-Signature] [-ResolveRegKeyPaths] [-TryToResolvePath] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [<CommonParameters>]
```

## DESCRIPTION
Get-BluGenieCOMObjectInfo will query for possible COM Object HiJacking.  The process searches for .dll and .exe files that can be HiJacked using the registry CLSID.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieCOMObjectInfo
 ``` 
 ```yam 
 Description: Return all COM objects that have a value for InprocServer32 or LocalServer32
Notes: The default Hash Algorithm is (MD5)
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieCOMObjectInfo -Signature  -Algorithm SHA256
 ``` 
 ```yam 
 Description: Return all COM objects, process Signature Authentication Information and set the Hash Algorithm to (SHA256)
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieCOMObjectInfo -Signature -FilterType Signature_Verified -NotMatch -Pattern '^Signed'
 ``` 
 ```yam 
 Description: Filter type by (Signature_Verified) with a value not like 'Signed'
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieCOMObjectInfo -Pattern '7-Zip'
 ``` 
 ```yam 
 Description: Filter type by (Caption) with a value like '7-Zip'
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieCOMObjectInfo -TryToResolvePath
 ``` 
 ```yam 
 Description: Resolve path for any file not identiifed in the registry.  The search path is $env:windir and all sub directories.
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieCOMObjectInfo -TryToResolvePath -ResolveRegKeyPaths
 ``` 
 ```yam 
 Description: Resolve the root registry key and the parent registry key paths
Notes: This will slow the process down.  Most of the time this information is not needed.  By default this option is not set
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieCOMObjectInfo -TryToResolvePath -FilterType OnDisk -NotMatch -Pattern 'True'
 ``` 
 ```yam 
 Description: Query for any InprocServer32 or LocalServer32 Object references that have not been located on the local system disk.
Notes:
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieCOMObjectInfo -FilterType ComponentId -Pattern '{581b6888-ba70-3d90-a5f9-865f03d29c6b1}'
 ``` 
 ```yam 
 Description: Query for a Component ID
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieCOMObjectInfo -TryToResolvePath -FilterType Hash -Pattern '5808c2e483c1e42bdd69d8227e80b96f|7a53101d82f382fcbc883b485b01f4e4|a54e980e453ed712a6ecf639ca70f4db'
 ``` 
 ```yam 
 Description: RegEx pattern to search for several instances
Notes:
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Get-BluGenieCOMObjectInfo -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Get-BluGenieCOMObjectInfo -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Get-BluGenieCOMObjectInfo -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Return all COM objects that have a value for InprocServer32 or LocalServer32 and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Get-BluGenieCOMObjectInfo -ReturnObject
 ``` 
 ```yam 
 Description: Return all COM objects that have a value for InprocServer32 or LocalServer32 and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### FilterType
 ```yam 
 -FilterType <String>
    Description: Filter by Property Type 
    Notes:  
    Filter Option = "ComponentId"			-   Com Object ID
            Filter Option = "Caption"				-   Display name
            Filter Option = "KeyRoot"				-   Parent / Root Registry Key Path
            Filter Option = "Type"					-   Key Type ( InprocServer32 | LocalServer32 )
            Filter Option = "KeyPath"				-   Full Registry Key Path
            Filter Option = "KeyValue"				-   Value from the Full Registry Key Path
            Filter Option = "FilePath"				-   Full Name and Path of the file nested in the Registry Key Value
            Filter Option = "Arguments"				-   Associated Arguments for the command
            Filter Option = "Hash"					-   The Hash value of the Process ( MACTripleDES / MD5 / RIPEMD160 / SHA1 / SHA256 / SHA384 / SHA512 ) 
            Filter Option = "OnDisk"				-   Is the file located on disk ( True / False )
            Filter Option = "Signature_Comment"		-   Display error message while pulling Signature Information [Note:  This is only available if you use the -Signature switch]
            Filter Option = "Signature_FileVersion" -   File Version and OS Build information in part of the OS [Note:  This is only available if you use the -Signature switch]
            Filter Option = "Signature_Description" -   The description of the files signature [Note:  This is only available if you use the -Signature switch]
            Filter Option = "Signature_Date"		-   Date when the file was signed [Note:  This is only available if you use the -Signature switch]
            Filter Option = "Signature_Company"		-   The company signing the file [Note:  This is only available if you use the -Signature switch]
            Filter Option = "Signature_Publisher"	-   The Publisher signing the file [Note:  This is only available if you use the -Signature switch]
            Filter Option = "Signature_Verified"	-   Verification ( Signed / UnSigned / Null ) [Note:  This is only available if you use the -Signature switch]
    Alias:
    ValidateSet: 
    'Type','ComponentId','Caption','KeyRoot','KeyPath','KeyValue','FilePath','Arguments','OnDisk','Hash','Signature_Comment','Signature_FileVersion','Signature_Description','Signature_Date','Signature_Company','Signature_Publisher','Signature_Verified'
    
    Required?                    false
    Position?                    1
    Default value                Caption
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Pattern
 ```yam 
 -Pattern <String>
    Description: Search Pattern using RegEx 
    Notes: Default Value = '.*' 
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                .*
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### COMType
 ```yam 
 -COMType <String>
    Description: Select which type of COM Object to search for
    Notes: 
    * InprocServer32
            * LocalServer32
    Alias:
    ValidateSet: 'InprocServer32','LocalServer32','All'
    
    Required?                    false
    Position?                    3
    Default value                All
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
### NotMatch
 ```yam 
 -NotMatch [<SwitchParameter>]
    Description: Show only results that do not match the given Pattern 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Signature
 ```yam 
 -Signature [<SwitchParameter>]
    Description: Query Signature information 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ResolveRegKeyPaths
 ```yam 
 -ResolveRegKeyPaths [<SwitchParameter>]
    Description: Identify and resolve the Component ID to the parent registry key. 
    Notes: This slows down the query process and is disabled by default. 
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### TryToResolvePath
 ```yam 
 -TryToResolvePath [<SwitchParameter>]
    Description: Query the $env:windir for the file that does not have a defined path in the Registry by default. 
    Notes: This slows down the query process and is disabled by default.
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



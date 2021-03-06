# Invoke-BluGenieProcessHash

## SYNOPSIS
Suspend, Resume, Stop and Export processes or process information based on the Hash value.
This function is setup to take one or many hash descriptors, locate the running item,
and manage it by either Suspending it Resuming it, or Stopping / Killing it.

## SYNTAX
```
Invoke-BluGenieProcessHash [[-Hash] <String[]>] [[-Managetype] <String>] [[-Algorithm] <String>] [-FilterType <String>] [-Pattern <String>] [-TimerLoop <Int32>] [-SleepTime <Int32>] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [<CommonParameters>]
```

## DESCRIPTION
Suspend, Resume, Stop and Export processes or process information based on the 'Process','Handle','Path', or 'Hash'
This function is setup to take one or many descriptors, locate the running item(s),
and manage it by either Suspending it Resuming it, or Stopping / Killing it.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Invoke-BluGenieProcessHash
 ``` 
 ```yam 
 Description: Display the hash information for all running Processes.
Notes: The default Algorithm is (MD5)
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Invoke-BluGenieProcessHash -Hash 80c6dd21910db50b90f0a5d00957ab6e011c43e23dfb4bf174c1448ce2863e0c81fbc8cc07e9b0bd4f4dbef2ada31c1dc7e676e9bc0b40bf7b85f2d052fdf5a9 -Algorithm SHA512
 ``` 
 ```yam 
 Description: Terminate the Process with the specific hash.
Notes: The Algorithm used is (SHA512)
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Invoke-BluGenieProcessHash -Hash 74b64b52a66c242fe8a3119fb8445295e0b8719187653cd08cedeeaa26e97452 -Algorithm SHA256 -ManageType Suspend
 ``` 
 ```yam 
 Description: Suspend the Process with the specific hash.
Notes: The Algorithm used is (SHA256)
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Invoke-BluGenieProcessHash -Hash 74b64b52a66c242fe8a3119fb8445295e0b8719187653cd08cedeeaa26e97452 -Algorithm SHA256 -ManageType Resume
 ``` 
 ```yam 
 Description: Resume the Process with the specific hash.
Notes: The Algorithm used is (SHA256)
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Invoke-BluGenieProcessHash -FilterType 'Process' -Pattern 'notepad'
 ``` 
 ```yam 
 Description: Filter all processes by Process name and look for any process that matches ( notepad ) in the name
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Invoke-BluGenieProcessHash -FilterType 'Process' -Pattern '^notepad\.exe$'
 ``` 
 ```yam 
 Description: Filter all processes by Process name and look for the exact match of ( Notepad.exe )
Notes:
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Invoke-BluGenieProcessHash -FilterType 'Hash' -Pattern 'f1139811bbf61362915958806ad30211|88c998e5af2e07a81c35d34b6edd0006'
 ``` 
 ```yam 
 Description: Search for multiple items with Regex
Notes:
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Invoke-BluGenieProcessHash -FilterType 'Hash' -Pattern 'f1139811bbf61362915958806ad30211|88c998e5af2e07a81c35d34b6edd0006' -Managetype Stop
 ``` 
 ```yam 
 Description: Terminate multiple items with Regex
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Invoke-BluGenieProcessHash -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Invoke-BluGenieProcessHash -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Invoke-BluGenieProcessHash -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Display the hash information for all running Processes and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Invoke-BluGenieProcessHash -ReturnObject
 ``` 
 ```yam 
 Description: Display the hash information for all running Processes and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### Hash
 ```yam 
 -Hash <String[]>
    Description: The Hash value for a specific process
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Managetype
 ```yam 
 -Managetype <String>
    Description: Manage the behavior of the process (Suspend, Resume, Stop)
    Notes:  
    Alias:
    ValidateSet: 'Report','Suspend','Resume','Stop'
    
    Required?                    false
    Position?                    2
    Default value                Report
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
    Position?                    3
    Default value                MD5
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### FilterType
 ```yam 
 -FilterType <String>
    Description:  Which property to filter by
          Notes:  
              Filter Option
    	•	"Process"
    			Process Name
    	•	"Handle"
    			Handle of the Process
              •	"Path"
    			Full path with extension of the executable
              •	"Hash"
    			Hash value based on 'MACTripleDES','MD5','RIPEMD160','SHA1','SHA256','SHA384','SHA512' which is controlled wit the 
    		-Algorithm parameter
    Alias:
    ValidateSet: 'Process','Handle','Path','Hash'
    
    Required?                    false
    Position?                    named
    Default value                Hash
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Pattern
 ```yam 
 -Pattern <String>
    Description:  RegEx supported Search patterns to help filter the returning criteria
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                .*
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### TimerLoop
 ```yam 
 -TimerLoop <Int32>
    Description: Set how many loops the terminate process checks for validation
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                12
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### SleepTime
 ```yam 
 -SleepTime <Int32>
    Description: Set the Sleep time between each loop
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                5
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



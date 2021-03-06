# Invoke-BluGenieNetStat

## SYNOPSIS
Report and Manage processes that have created a Listening port

## SYNTAX
```
Invoke-BluGenieNetStat [[-FilterType] <String>] [[-Pattern] <String>] [[-Managetype] <String>] [-Algorithm <String>] [-State <String>] [-Signature] [-NotMatch] [-ForeignAddressAsIP] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [<CommonParameters>]
```

## DESCRIPTION
Report and Manage processes that have created a Listening port

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Invoke-BluGenieNetStat
 ``` 
 ```yam 
 Description: Output any (Listening or Established) connection information
Notes: 
The Default Hash Algorithm is (MD5)
- Sample Output -
               "State":  "LISTENING",
               "PID":  "664",
               "Protocol":  "TCP",
               "Local_Address":  "[::]:49701",
               "Foreign_Address":  "[::]:0",
               "Process_Name":  "lsass.exe",
               "Process_StartTime":  null,
               "Process_Path":  "C:\\WINDOWS\\system32\\lsass.exe",
               "Hash":  "3df3b76b19da92a8adc01ff38560282d",
               "CommandLine":  null,
               "Signature_Comment":  "",
               "Signature_FileVersion":  "10.0.17134.376 (WinBuild.160101.0800)",
               "Signature_Description":  "Local Security Authority Process",
               "Signature_Date":  "2:45 AM 10/21/2018",
               "Signature_Company":  "Microsoft Corporation",
               "Signature_Publisher":  "Microsoft Windows Publisher",
               "Signature_Verified":  "Signed"
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Invoke-BluGenieNetStat -State ALL -Algorithm SHA256
 ``` 
 ```yam 
 Description: Connection information with Hash value of SHA256
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Invoke-BluGenieNetStat -FilterType Local_Address -Pattern 3389
 ``` 
 ```yam 
 Description: Report on all Listening or Established ports that have a port of 3389
Notes: The -Pattern is a (RegEx) query by default.  If you used :3389 for the port 
             you would have to escape the (:) like so '\:3389'
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Invoke-BluGenieNetStat -FilterType Process_Name -Pattern Windows10FirewallService
 ``` 
 ```yam 
 Description: Connection information with with any ( Process Name ) of ( Windows10FirewallService )
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Invoke-BluGenieNetStat -FilterType Process_Name -Pattern Windows10FirewallService -Managetype Stop
 ``` 
 ```yam 
 Description: Terminate any connection based on the search terms
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Invoke-BluGenieNetStat -NotMatch -Pattern '\[\:\:\]\:0|0.0.0.0:0'
 ``` 
 ```yam 
 Description: Report on all Listening or Established ports that do not have a value for Foreign_Address of '[::]:0' or '0.0.0.0:0'
Notes: 	The -Pattern is a (RegEx) query by default.  If you used '[::]:0' for the Foreign_Address 
              you would have to escape the ascii charactors '\[\:\:\]\:0'.  You can also use the pipe command to do an (OR) in Regex.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Invoke-BluGenieNetStat -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Invoke-BluGenieNetStat -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal 
Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Invoke-BluGenieNetStat -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Invoke-BluGenieNetStat and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Invoke-BluGenieNetStat -ReturnObject
 ``` 
 ```yam 
 Description: Invoke-BluGenieNetStat and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### FilterType
 ```yam 
 -FilterType <String>
    Description: Filter based on Property Type 
    Notes: 
    Filter Types
    •	"CommandLine"
    	Command line used to spawn the Network Connection
        •	"Foreign_Address"
    	The Remote Address for the currect connection with port information
        •	"Hash"
    	The Hash value of the Process ( MACTripleDES / MD5 / RIPEMD160 / SHA1 / SHA256 / SHA384 / SHA512 ) 
        •	"Local_Address"
    	The IP of the Local host with port information
        •	"PID"
    	The current Process ID associated with the Connection
        •	"ProcessName"
    	The Process name associated with the Connection
        •	"Path"
    	The path of the Process associated with the Connection
        •	"Protocol"
    	What Protocal is used for the currect Connection
    •	"Caption"
    	The Caption property of the associated process
    •	"Description"
    	The Description property of the associated process
    •	"Name"
    	The Name of the associated process
    •	"ProcessId"
    	The current Process ID associated with the Connection
    •	"SessionId"
    	The current Session associated with the Connection
        •	"Signature_Comment"
    	Display error message while pulling Signature Information [Note: This is only available if you use the -Signature switch]
        •	"Signature_FileVersion"
    	File Version and OS Build information in part of the OS [Note:  This is only available if you use the -Signature switch]
        •	"Signature_Description"
    	The description of the files signature [Note:  This is only available if you use the -Signature switch]
        •	"Signature_Date"
    	Date when the file was signed [Note:  This is only available if you use the -Signature switch]
        •	"Signature_Company"
    	The company signing the file [Note:  This is only available if you use the -Signature switch]
        •	"Signature_Publisher"
    	The Publisher signing the file [Note:  This is only available if you use the -Signature switch]
        •	"Signature_Verified"
    	Verification ( Signed / UnSigned / Null ) [Note:  This is only available if you use the -Signature switch]
    Alias:
    ValidateSet: 'CommandLine','Foreign_Address','Hash','Local_Address','PID','ProcessName','Path','Caption','Description','Name','ProcessId','SessionId','Proto','Signature_Comment','Signature_FileVersion','Signature_Description','Signature_Date','Signature
    _Company','Signature_Publisher','Signature_Verified'
    
    Required?                    false
    Position?                    1
    Default value                Foreign_Address
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Pattern
 ```yam 
 -Pattern <String>
    Description: Search Pattern using RegEx
    Notes:  
    Alias:
    ValidateSet: 'Item1','Item2','Item3'
    
    Required?                    false
    Position?                    2
    Default value                .*
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Managetype
 ```yam 
 -Managetype <String>
    Description: Manage the behavior of the process (Suspend, Resume, Stop) 
    Notes:  
    Alias:
    ValidateSet: Suspend,Resume,Stop
    
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
    Position?                    named
    Default value                MD5
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### State
 ```yam 
 -State <String>
    Description: What state is the Connection in ( LISTENING / CLOSE_WAIT / TIME_WAIT / ESTABLISHED )
    Notes:  
    Alias:
    ValidateSet: LISTENING,ESTABLISHED,LISTENING & ESTABLISHED,WAIT,ALL
    
    Required?                    false
    Position?                    named
    Default value                LISTENING|ESTABLISHED
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
### NotMatch
 ```yam 
 -NotMatch [<SwitchParameter>]
    Description: Not Matching or Exclude pattern queries 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ForeignAddressAsIP
 ```yam 
 -ForeignAddressAsIP [<SwitchParameter>]
    
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
    Notes: Default Value = '.*'
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



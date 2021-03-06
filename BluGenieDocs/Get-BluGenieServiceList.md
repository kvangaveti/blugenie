# Get-BluGenieServiceList

## SYNOPSIS
Get a full list of Services, with Process Handle information

## SYNTAX
```
Get-BluGenieServiceList [[-FilterType] <String>] [-Pattern <String>] [-Managetype <String>] [-ManageServicetype <String>] [-Algorithm <String>] [-Signature] [-TrackChanges] [-OverrideTracked] [-RevertTracked] [-ClearGarbageCollecting] [-UseCache] 
[-CachePath <String>] [-RemoveCache] [-DBName <String>] [-DBPath <String>] [-UpdateDB] [-ForceDBUpdate] [-NewDBTable] [-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [-FormatView <String>] [<CommonParameters>]
```

## DESCRIPTION
Get a full list of Services, with Process Handle information

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-BluGenieServiceList
 ``` 
 ```yam 
 Description: Return information for all running Services and associated Processes
Notes:
		- Sample Output -
                  "Name":  "WpnUserService_9faea",
                  "DesktopInteract":  false,
                  "PathName":  "C:\\WINDOWS\\system32\\svchost.exe -k UnistackSvcGroup",
                  "ServiceType":  "Unknown",
                  "StartMode":  "Auto",
                  "Caption":  "Windows Push Notifications User Service_9faea",
                  "Description":  "This service hosts Windows notification platform which provides support for local and push notifications. ",
                  "DisplayName":  "Windows Push Notifications User Service_9faea",
                  "InstallDate":  null,
                  "ProcessId":  1388,
                  "Started":  true,
                  "StartName":  null,
                  "State":  "Running",
                  "ProcessName":  "svchost.exe",
                  "ProcessPath":  "c:\\windows\\system32\\svchost.exe",
                  "ProcessCommandLine":  "c:\\windows\\system32\\svchost.exe -k unistacksvcgroup -s WpnUserService",
                  "ProcessSessionId":  1,
                  "ProcessOwner":  "TESTLAB\\Administrator",
                  "ServiceExecPath":  "C:\\WINDOWS\\system32\\svchost.exe",
                  "Hash":  "32569e403279b3fd2edb7ebd036273fa"
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Get-BluGenieServiceList -Algorithm SHA256
 ``` 
 ```yam 
 Description: Change the Algorithm to SHA256
Notes:
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Get-BluGenieServiceList -FilterType Name -Pattern Maps
 ``` 
 ```yam 
 Description: Filter running Services and associated Processes that match the search value
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Get-BluGenieServiceList -FilterType Name -Pattern 'XboxNetApiSvc' -ManageServicetype Stop
 ``` 
 ```yam 
 Description: Stop the Service ( XboxNetApiSvc )
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Get-BluGenieServiceList -FilterType Hash -Pattern 'bfbecf7e48cbdbf1fb2c51164ef9e5f5' -Managetype Stop
 ``` 
 ```yam 
 Description: Terminate the Process associated with the Service
Notes:
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Get-BluGenieServiceList -Pattern 'XboxNetApiSvc' -ManageServicetype Stop -TrackChanges
 ``` 
 ```yam 
 Description: Track changes to the Service.  All information will be added to the registr under HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\ServiceList
Notes:
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Get-BluGenieServiceList -Pattern 'XboxNetApiSvc' -ManageServicetype Stop -TrackChanges -OverrideTracked
 ``` 
 ```yam 
 Description: Override or Force the Tracked informatrion to be tracked again
Notes:
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Get-BluGenieServiceList -Pattern 'XboxNetApiSvc' -OutUnEscapedJSON -RevertTracked
 ``` 
 ```yam 
 Description:
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Get-BluGenieServiceList -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
			Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Get-BluGenieServiceList -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal
			Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Get-BluGenieServiceList -OutUnEscapedJSON
 ``` 
 ```yam 
 Description: Get-BluGenieServiceList and Return Output as UnEscaped JSON format
Notes:  The OutUnEscapedJSON is used to beatify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Get-BluGenieServiceList -ReturnObject
 ``` 
 ```yam 
 Description: Get-BluGenieServiceList and Return Output an Object
Notes:  The ReturnObject is used to return a PowerShell Object.  Normal return data is a Hash Table.
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Get-BluGenieServiceList -OutYaml
 ``` 
 ```yam 
 Description: Return a detailed function report in YAML format
Notes:  The OutUnEscapedJSON is used to Beautify the JSON return and not Escape any Characters.  Normal return data is a Hash Table.
 ``` 


## PARAMETERS

### FilterType
 ```yam 
 -FilterType <String>
    Description:  Which property to filter by
          Notes:
              Filter Option
    	•	"Name"
    				Service Name (Default Value)
              •	"DesktopInteract"
    				Does the service interact with the Desktop [ True / False ]
              •	"PathName"
    				Service Path
              •	"ServiceType"
    				Service Type ( Share Process / Own Process )
              •	"StartMode"
    				Start Mode ( Manual / Started / Auto )
              •	"Caption"
    				Service Caption
              •	"Description"
    				Service Description
              •	"DisplayName"
    				Service Display Name
              •	"InstallDate"
    				Service Installed Date
              •	"ProcessId"
    				The current Process ID associated with the Service
              •	"Started"
    				Is the Service currently Started ( True / False )
              •	"StartName"
    				What Account is the Service associated with
              •	"State"
    				Running state of the currect service ( Running / Stopped )
              •	"ProcessName"
    				The Process name associated with the Service
              •	"ProcessPath"
    				The path of the Process associated with the Service
              •	"ProcessCommandLine"
    				The command line used with the Service
              •	"ProcessSessionId"
    				The Process ID (PID) associated with the Service
              •	"ProcessOwner"
    				The Owner of the Process
              •	"ServiceExecPath"
    				Path to the Service
              •	"Hash"
    				The Hash value of the Process ( MACTripleDES / MD5 / RIPEMD160 / SHA1 / SHA256 / SHA384 / SHA512 )
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
    ValidateSet: 'Name','DesktopInteract','PathName','ServiceType','StartMode','Caption','Description','DisplayName','InstallDate','ProcessId','Started','StartName','State','ProcessName','ProcessPath','ProcessCommandLine','ProcessSessionId','ProcessOwner','
    ServiceExecPath','Hash','Signature_Comment','Signature_FileVersion','Signature_Description','Signature_Date','Signature_Company','Signature_Publisher','Signature_Verified'
    
    Required?                    false
    Position?                    2
    Default value                Name
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
    Position?                    named
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
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ManageServicetype
 ```yam 
 -ManageServicetype <String>
    Description: Manage the behavior of the Service (Suspend, Resume, Remove)
    Notes:
    Alias:
    ValidateSet: Suspend,Resume,Remove
    
    Required?                    false
    Position?                    named
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
### TrackChanges
 ```yam 
 -TrackChanges [<SwitchParameter>]
    Description: Backup and Track the changes to the Service you are modifying
    Notes: Values stored in the registry under 'HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\ServiceList'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OverrideTracked
 ```yam 
 -OverrideTracked [<SwitchParameter>]
    Description: Force a Backup and Track the changes to the Service you are modifying
    Notes: Values stored in the registry under 'HKEY_LOCAL_MACHINE\SOFTWARE\BluGenie\ServiceList'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RevertTracked
 ```yam 
 -RevertTracked [<SwitchParameter>]
    Description: Restore the Tracked changes to the Service you originally modified
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
### UseCache
 ```yam 
 -UseCache [<SwitchParameter>]
    Description: Cache found objects to disk.  This is to not over tax Memory resources with found artifacts
    Notes: By default the Cache location is %SystemDrive%\Windows\Temp
    Alias:
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
    Notes: By default the Cache location is %SystemDrive%\Windows\Temp
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                $('{0}\Windows\Temp\{1}.log' -f $env:SystemDrive, $(New-BluGenieUID))
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveCache
 ```yam 
 -RemoveCache [<SwitchParameter>]
    Description: Remove Cache data on completion
    Notes: Cache information is removed right before the data is returned to the calling process
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### DBName
 ```yam 
 -DBName <String>
    Description: Database Name (Without extention)
    Notes: The default name is set to 'BluGenie'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                BluGenie
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### DBPath
 ```yam 
 -DBPath <String>
    Description: Path to either Save or Update the Database
    Notes: The default path is $('{0}\BluGenie' -f $env:ProgramFiles)  Example: C:\Program Files\BluGenie
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                $('{0}\BluGenie' -f $env:ProgramFiles)
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### UpdateDB
 ```yam 
 -UpdateDB [<SwitchParameter>]
    Description: Save return data to the Sqlite Database
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ForceDBUpdate
 ```yam 
 -ForceDBUpdate [<SwitchParameter>]
    Description: Force an update of the return data to the Sqlite Database
    Notes: By default only new items are saved.  The primary key is ( FullName )
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### NewDBTable
 ```yam 
 -NewDBTable [<SwitchParameter>]
    Description: Delete and Recreate the Database Table
    Notes:
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
    Position?                    named
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



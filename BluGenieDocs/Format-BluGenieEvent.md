# Format-BluGenieEvent

## SYNOPSIS
Format a Windows System Event Log with new properties from the Message field

## SYNTAX
```
Format-BluGenieEvent [[-Logname] <String>] [[-Schema] <String>] [-NoMsgPrefix] [-ClearGarbageCollecting] [-Export] [[-ExportPath] <String>] [[-ExcludeFilter] <String>] [-RemoveCache] [[-DBName] <String>] [[-DBTableName] <String>] [[-DBPath] <String>] 
[-Walkthrough] [-ReturnObject] [-OutUnEscapedJSON] [-OutYaml] [-OutJSON] [-PropsOnly] [[-EQLQuery] <String>] [[-SQLQuery] <String>] [-ForceEQLGenericQuery] [-Save] [[-SavePath] <String>] [[-UseInputFile] <String>] [[-MaxEvents] <Int32>] [[-ID] <Int32>] 
[[-AppendEventHash] <String>] [[-FormatView] <String>] [<CommonParameters>]
```

## DESCRIPTION
Format a Windows System Event Log with new properties from the Message field

An Event has a Message that is one big string.
This function will parse that information and convert any valid line item into a new Object Property and
bind it back to the original PsObject.

You can parse any property table name via PowerShell, EQL, and SQL Queries

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: Get-WinEvent -filterhashtable @{logname="Microsoft-Windows-Sysmon/Operational";id=10} -MaxEvents 1 | Select-Object -Property * | Convertto-Yaml
 ``` 
 ```yam 
 Description: This command will show what a normal event will look like using the Get-WinEvent command
Notes: We are pulling the SysMon Operational Event Data.  This will only work if you have SysMon Events being logged
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -MaxEvents 1 -ID 10 -OutYaml
 ``` 
 ```yam 
 Description:  This command will return an Event with new properties named with a prefix (Msg) based on what is parsed from the (Message) field of the event
Notes: The Properties property is also updated with the Names and Values of the Message field
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -MaxEvents 1 -ID 10 -Schema 'C:\Source\SysMon.Schema' -OutYaml
 ``` 
 ```yam 
 Description: This command will return an Event with properties remapped based on the Schema file selected
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -MaxEvents 1 -ID 10 -NoMsgPrefix -OutYaml
 ``` 
 ```yam 
 Description: This command will return an Event with the Message Properties appended to the Original Events Property Table without a (Msg) Prefix
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -MaxEvents 10 -ID 10 -PropsOnly -ReturnObject -FormatView JSON
 ``` 
 ```yam 
 Description: This command will return an Events Message Properties and Values only.  All the Normal PowerShell Property Tables are removed
Notes: The return is formated as JSON which looks identical to the output needed for EQL to work.
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Format-BluGenieEvent -Event 'Microsoft-Windows-Windows Defender/Operational' -MaxEvents 10 -ID 1013 -ReturnObject -OutJSON -PropsOnly
 ``` 
 ```yam 
 Description: This command will return Event Properties for Windows Defender ID 1013
Notes: This shows that not all properties from the Event Message are valuable, which is why you would pull all properties for this Event ID.
 ``` 
 
### EXAMPLE 7
 ``` 
 Command: Format-BluGenieEvent -Event 'Microsoft-Windows-Windows Defender/Operational' -ID 1000 -MaxEvents 1 -ReturnObject -NoMsgPrefix
 ``` 
 ```yam 
 Description: This command will return all Event Properties for Windows Defender ID 1000 including the Message Properties
Notes:
 ``` 
 
### EXAMPLE 8
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 10 -MaxEvents 2 -PropsOnly -ExportPath C:\Source\SysMon_PoshPull.json -OutYaml
 ``` 
 ```yam 
 Description: This command will export the Event Properties to a JSON file
Notes:
 ``` 
 
### EXAMPLE 9
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 1 -UseInputFile C:\Windows\Temp\BGSysMonEventBackup.evtx -ReturnObject -PropsOnly
 ``` 
 ```yam 
 Description: This command will query a Windows Evnet Log backp file instead of the Widnows Event Log
Notes: Currently this only supports 1 Input file at a time.  You can use an backup Windows Event in EVT, EVTX, and JSON format.
 ``` 
 
### EXAMPLE 10
 ``` 
 Command: Format-BluGenieEvent -UseInputFile 'Last:' -PropsOnly -OutYaml -EQLQuery "process where process_name in ('wsl.exe')"
 ``` 
 ```yam 
 Description: This command will query a Windows Event Log backup file using the last saved JSON file Format-BGEvent created.
Notes:
 ``` 
 
### EXAMPLE 11
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 1 -MaxEvents 1000 -PropsOnly -EQLQuery "process where process_name in ('powershell_ise.exe')" -OutYaml
 ``` 
 ```yam 
 Description: This command will filter 1000 SysMon Event 1 ID's and parse the return using EQL and an EQLQuery as a string
Notes:
 ``` 
 
### EXAMPLE 12
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 1 -MaxEvents 1000 -PropsOnly -EQLQuery "file:C:\Source\EQLQuery_Parse_Process_Name_for_PowerShell_ise.exe.eql" -OutYaml
 ``` 
 ```yam 
 Description: This command will filter 1000 SysMon Event 1 ID's and parse the return using EQL and an EQLQuery from a file
Notes:
 ``` 
 
### EXAMPLE 13
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 1 -MaxEvents 1000 -PropsOnly -EQLQuery "process where process_name in ('notepad++.exe')" -OutYaml -RemoveCache
 ``` 
 ```yam 
 Description: This command will filter 1000 SysMon Event 1 ID's and parse the return using EQL.  The search is for Notepad++.exe and all Cached .JSON files for EQL will be removed.
Notes:
 ``` 
 
### EXAMPLE 14
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" ID 3 -MaxEvents 1000 -PropsOnly -EQLQuery "network where process_name == '*code.exe'"
 ``` 
 ```yam 
 Description: This command will filter 1000 SysMon Event 3 ID's and parse the return using EQL.  The search is for VSCode.exe and uses EQL's built in schema names
Notes:
 ``` 
 
### EXAMPLE 15
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 3 -MaxEvents 1000 -PropsOnly -EQLQuery "generic where Image == '*code.exe'" -ForceEQLGenericQuery
 ``` 
 ```yam 
 Description: This command will filter 1000 SysMon Event 3 ID's and parse the return using EQL.  This Query will use the EQL Generic process names
Notes:
 ``` 
 
### EXAMPLE 16
 ``` 
 Command: Format-BluGenieEvent -Event "Microsoft-Windows-Sysmon/Operational" -ID 3 -MaxEvents 1000 -PropsOnly -OutYaml -EQLQuery "generic where process_name == '*code.exe'" -ForceEQLGenericQuery -Schema .\Blubin\Modules\BluGenie\Configs\Schema\SysMon_ID3.Schema
 ``` 
 ```yam 
 Description: This command will filter 1000 SysMon Event 3 ID's and parse the return using EQL.  This Query will use the EQL schema process names but uses the -Schema switch to remap the Properties names
Notes:
 ``` 
 
### EXAMPLE 17
 ``` 
 Command: Format-BluGenieEvent -Event "Security" -ID 4688 -MaxEvents 1000 -OutYaml -DBPath C:\Source -SQLQuery "SELECT * FROM FormatBGEvent WHERE MsgNewProcessName LIKE '%GoogleUpdate.exe'"
 ``` 
 ```yam 
 Description: This command will filter 1000 Security Event 4688 ID's and parse the return using SQL.  The search is for a New Process Name being created called GoogleUpdate.exe.  The SQL Query is (String Text Based) and the DB is Cached to Disk
Notes:
 ``` 
 
### EXAMPLE 18
 ``` 
 Command: Format-BluGenieEvent -Event "Security" -ID 4688 -MaxEvents 1000 -OutYaml -DBPath C:\Source -SQLQuery 'file:C:\Source\WHERE_MsgNewProcessName_LIKE_GoogleUpdate.exe.sql'
 ``` 
 ```yam 
 Description: This command will Run a SQL Query using a File
Notes:
 ``` 
 
### EXAMPLE 19
 ``` 
 Command: Format-BluGenieEvent -Event "Security" -ID 4688 -MaxEvents 1000 -OutYaml -SQLQuery "SELECT * FROM FormatBGEvent WHERE MsgNewProcessName LIKE '%GoogleUpdate.exe'"
 ``` 
 ```yam 
 Description: This command will Run a SQL Query and process the DB in Memory
Notes:
 ``` 
 
### EXAMPLE 20
 ``` 
 Command: Format-BluGenieEvent -Event "Security" -ID 4688 -MaxEvents 1000 -OutYaml -PropsOnly -SQLQuery "SELECT * FROM FormatBGEvent WHERE NewProcessName LIKE '%GoogleUpdate.exe'"
 ``` 
 ```yam 
 Description: This command will filter (Message Properties Only) and parse the data using a SQL Query
Notes:
 ``` 
 
### EXAMPLE 21
 ``` 
 Command: Format-BluGenieEvent -Event "Security" -ID 4688 -MaxEvents 1000 -ReturnObject -PropsOnly -SQLQuery "SELECT * FROM FormatBGEvent WHERE NewProcessName LIKE '%GoogleUpdate.exe'"
 ``` 
 ```yam 
 Description: This command will returned data as an Object(s) while parsing data using a SQL Query
Notes:
 ``` 
 
### EXAMPLE 22
 ``` 
 Command: Format-BluGenieEvent -Event "Security" -ID 4688 -MaxEvents 1000 -OutYaml -DBPath C:\Source -SQLQuery "SELECT * FROM FormatBGEvent WHERE MsgNewProcessName LIKE '%GoogleUpdate.exe'"
 ``` 
 ```yam 
 Description: This command will remove the Cached DB from the local disk after the Query
Notes:
 ``` 
 
### EXAMPLE 23
 ``` 
 Command: Format-BluGenieEvent -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 24
 ``` 
 Command: Format-BluGenieEvent -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### Logname
 ```yam 
 -Logname <String>
    Description: The Event Log Name
    Notes: Same to command (Get-WinEvent)
    Alias: Event
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Schema
 ```yam 
 -Schema <String>
    Description: Use a Schema file to change or remap any property name in any Windows Event your trying to Query
    Notes: Schema is in ( YAML ) Format
            Sample:
                Property_Name: New_Property_Name
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### NoMsgPrefix
 ```yam 
 -NoMsgPrefix [<SwitchParameter>]
    Description: By Default the Event Message content is parsed and all properties have a Prefix called (Msg).  This option will force the
    normal propery names without (Msg).
    Notes:  By forcing the default name you could possibly overwrite normal event properties with content from the message information
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
### Export
 ```yam 
 -Export [<SwitchParameter>]
    Description: Enable the Export of Filtered data for later use
    Notes:  This is automatically set to true if -EQLQuery is used.
    Alias: Sv
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ExportPath
 ```yam 
 -ExportPath <String>
    Description: The Path to Export / Save parsed event data to the local disk
    Notes: Default is $env:systemdrive\Windows\Temp\BGFE_<GUID>.json.  If this is changed (Make Sure) the Ext is (.json).  There is no code
    validation on the path and filename.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                $('{0}\Windows\Temp\BGFE_{1}.json' -f $env:SystemDrive, $(New-BluGenieUID))
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ExcludeFilter
 ```yam 
 -ExcludeFilter <String>
    Description: Use an ExcludeFilter Yaml file to remove items that you do not want to include in the Event Search.
    Notes: ExcludeFilter  is in ( YAML ) Format
            Sample:
                - Name: Image
                  Value: notepad\+\+\.exe
                - Name: Image
                  Value: NppLauncher\.exe
                - Name: Image
                  Value: eqllib\.exe
                - Name: CommandLine
                  Value: json
    Alias:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    4
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### RemoveCache
 ```yam 
 -RemoveCache [<SwitchParameter>]
    Description: Remove Cache data on completion
    Notes: Cache information is removed right before the data is returned to the calling process
        Items Removed:
            - JSON Output for EQL Query
            - SQLite DB if you do not use the -DBPath = ':MEMORY:' parameter.  Note: The DB in memory is the default option for SQL
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
    Description: Database name used when parsing using SQL and Setting the DBPath to a local disk path
    Notes: The default name is "BluGenie"
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    5
    Default value                BluGenie
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### DBTableName
 ```yam 
 -DBTableName <String>
    Description: Database table name when parsing using SQL.
    Notes:  The default name is 'FormatBGEvent'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    6
    Default value                FormatBGEvent
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### DBPath
 ```yam 
 -DBPath <String>
    Description: Database Path when parsing using SQL
    Notes: The default path is located in memory (:MEMORY:)
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    7
    Default value                :MEMORY:
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
### OutJSON
 ```yam 
 -OutJSON [<SwitchParameter>]
    Description: Return detailed information in JSON Format
    Notes: Only supported in Posh 3.0 and above
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### PropsOnly
 ```yam 
 -PropsOnly [<SwitchParameter>]
    Description: Used to only parse and display the Properties of an Event Message field.  No other event data will be captured.
    Notes: All Event messages properties begin with a title name followed by (:).
            Example (ProcessName: PowerShell_ISE.exe)
            (ProcessName) would be the name of the Property
            (PowerShell_ISE.exe) would be the assigned value
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### EQLQuery
 ```yam 
 -EQLQuery <String>
    Description: Use EQL Queries to parse the data
    Notes: To use a file instead of a Query String Type "file:<Full_File_Path>" Example: "file:C:\Windows\Temp\Query_4689_.eql"
            file: tells the Query to grab the content from a file.  The file extention can be anything.  The file is always treated as TEXT.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    8
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### SQLQuery
 ```yam 
 -SQLQuery <String>
    Description: Use SQL Queries to parse the data
    Notes: To use a file instead of a Query String Type "file:<Full_File_Path>" Example: "file:C:\Windows\Temp\Query_4689_.eql"
            file: tells the Query to grab the content from a file.  The file extention can be anything.  The file is always treated as TEXT.
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    9
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ForceEQLGenericQuery
 ```yam 
 -ForceEQLGenericQuery [<SwitchParameter>]
    Description: Force an EQL Generic Query even if EQL has a known Schema type
    Notes: By default BG will automatically determine if EQL has a known Schema. This should be used if you are looking for SysMon Events
    that don't have tracked ID's by EQL.  Currently only ID 1, 3, 5, 7, 11, 12, 13, 14 and 15 are known SysMon EQL managed events.
    Alias: FEGQ
    ValidateSet:
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Save
 ```yam 
 -Save [<SwitchParameter>]
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### SavePath
 ```yam 
 -SavePath <String>
    
    Required?                    false
    Position?                    10
    Default value                $('BGFE_{0}\Windows\Temp\{1}.json' -f $env:SystemDrive, $(New-BluGenieUID))
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### UseInputFile
 ```yam 
 -UseInputFile <String>
    Description: Force Query from a previously saved file and not the Windows Event Log
    Notes:  You can use JSON, EVT or EVTX files.  If you type in "Last:", this will search for the last saved
    BGFE_<GUID>.json file from the default save location $env:systemdrive\Windows\Temp
    
            o JSON files cannot be filtered with the FilterHashTable.  They can only be filtered by EQL and SQL Queries.
            o EVT & EVTX backup log files can be filtered using the FilterHashTable Query String
    Alias: FIL
    ValidateSet:
    
    Required?                    false
    Position?                    11
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### MaxEvents
 ```yam 
 -MaxEvents <Int32>
    
    Required?                    false
    Position?                    12
    Default value                0
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ID
 ```yam 
 -ID <Int32>
    Description: Query for a specific Event ID
    Notes:
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    13
    Default value                0
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### AppendEventHash
 ```yam 
 -AppendEventHash <String>
    Description: Query based on more Event Filter Hash Table information
    Notes: The Default is LogName, and ID
            Example: -AppendEventHash 'ProviderName="Application Error"; Data="iexplore.exe"'
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    14
    Default value                
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
    Position?                    15
    Default value                None
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



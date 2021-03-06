# New-BluGenieHelpMenu

## SYNOPSIS
New-BluGenieHelpMenu is a Dynamic Console menu system creator for any CmdLet that has a valid Help header

## SYNTAX
```
New-BluGenieHelpMenu [-Command] <String> [[-Console]] [[-Walkthrough]] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES

### EXAMPLE 1
 ``` 
 New-BluGenieHelpMenu -Command Get-HashInfo
 ``` 
 ```yam 
 This will parse the Get-HashInfo help information and display a dynamic console menu system
 ``` 
 
### EXAMPLE 2
 ``` 
 New-BluGenieHelpMenu -Command Get-HashInfo -Console
 ``` 
 ```yam 
 This will parse the Get-HashInfo help information and display a dynamic console menu system.
The Run command is removed and a BluGenie Console sample script is created as well.
 ``` 
 
### EXAMPLE 3
 ``` 
 New-BluGenieHelpMenu -Help
 ``` 
 ```yam 
 This will display the dynamic console menu for this command
 ``` 


## PARAMETERS

### Command
 ```yam 
 -Command <String>
    Select which Command to buld the menu for
    
    <Type>ValidateSet<Type>
    <ValidateSet>Add-FirewallRule,Disable-FirewallRule,Enable-AllFirewallRules,Get-ProcessList,Set-RemoteDesktopProcess,Enable-FirewallRule,Disable-AllFirewallRules,Set-FirewallStatus,Get-SystemInfo,Remove-FirewallRule,Update-FirewallProfileStatus,Get-Child
    ItemList,Manage-ProcessHash,Get-LiteralPath,Get-FirewallRules,Set-FirewallGPOStatus,Get-HashInfo,Invoke-NetStat,Get-Registry,Get-ServiceList,Get-SchTaskInfo,Update-Sysinternals,Get-Signature,Get-COMObjectInfo,Get-LoadedRegHives,Invoke-LoadAllProfileHive
    s,Invoke-UnLoadAllProfileHives,Get-MRUActivityView,Get-ADMachineInfo,Get-RegistryProcessTracking,Set-Prefetch,Get-AuditProcessTracking,Set-AuditProcessPol,Get-WindowsUpdates,Get-AutoRuns,Get-RegSnapshot,Get-FileSnapshot,Build-Command,Send-Item,Install-H
    arvester,Expand-ArchivePS2,Install-SysMon,Systems,ParallelCommands,PostCommands,ThreadCount,Range,Json,Wipe,Settings,Resolve-BgDnsName,Ping,Connect-ToSystem,Connect,SetTrapping,Invoke-PSQuery,PSQuery,Invoke-Process,Run,Enable-WinRMoverWMI,Enable-WinRM<V
    alidateSet>
    
    Required?                    true
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Console
 ```yam 
 -Console [<SwitchParameter>]
    Specify if this is an internal BluGenie call.  Remove the Run command and build out a BluGenie Console sample command
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    3
    Default value                True
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    An automated process to walk through the current function and all the parameters
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    4
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



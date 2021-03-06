# Invoke-PSnmap

## SYNOPSIS
Linux nmap for PowerShell (almost).
Ping sweeps and scans a network for specified open ports. Can also perform DNS lookups.
Port connect timeout is custom (milliseconds).
Multithreaded with a default of 32 concurrent threads.

If you get over about 20-25,000 threads, you'll experience significant slowdowns
towards the end, so avoiding that is recommended. This number may vary in your environment.

Svendsen Tech.
Copyright (c) 2015, Joakim Borger Svendsen. All rights reserved.

MIT license. http://www.opensource.org/licenses/MIT

Homepage/documentation:
https://www.powershelladmin.com/wiki/Port_scan_subnets_with_PSnmap_for_PowerShell

## SYNTAX
```
Invoke-PSnmap [-ComputerName] <String[]> [[-Port] <Int32[]>] [-Dns] [-ScanOnPingFail] [[-ThrottleLimit] <Int32>] [-HideProgress] [[-Timeout] <Int32>] [[-PortConnectTimeoutMs] <Int32>] [-NoSummary] [-AddService] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES

### EXAMPLE 1
 ``` 
 $x = PSnmap -Cn 192.168.1.1/24, synology, ubuntuvm, vista64esxi -Port 22,3389,80,443 -Dns #-Verbose
 ``` 
 ```yam 
 PS C:\> $x | Where { $_.Ping } | Format-Table -AutoSize

ComputerName  IP/DNS                                    Ping Port 22 Port 80 Port 443 Port 3389
------------  ------                                    ---- ------- ------- -------- ---------
192.168.1.1   router.asus.com                           True   False    True    False     False
192.168.1.17  Chromecast                                True   False   False    False     False
192.168.1.25  android-xxxxxxxxxxxxxxx                   True   False   False    False     False
192.168.1.31  ubuntuvm                                  True    True    True    False     False
192.168.1.77                                            True    True   False    False     False
192.168.1.84  synology                                  True    True    True     True     False
192.168.1.122 desktop                                   True   False   False    False     False
192.168.1.124 PC58271                                   True   False    True     True      True
192.168.1.127 stuepc                                    True   False   False    False      True
192.168.1.131 2008r2esxi                                True   False    True    False      True
192.168.1.132 2008r2esxi2                               True   False    True    False      True
192.168.1.133 win7esxi                                  True   False   False    False      True
192.168.1.151 SERVER2008                                True   False   False    False      True
192.168.1.166                                           True    True    True     True     False
192.168.1.195                                           True   False   False    False     False
192.168.1.231 HPENVY4500                                True   False    True     True     False
192.168.1.234 elitebook                                 True    True   False    False      True
192.168.1.245 server2012                                True   False    True    False      True
192.168.1.253 vista64esxi                               True   False   False    False      True
synology      192.168.1.84                              True    True    True     True     False
ubuntuvm      192.168.1.31                              True    True    True    False     False
vista64esxi   fa70::614c:f45a:72f9:46a5%3;192.168.1.253 True   False   False    False      True
 ``` 
 
### EXAMPLE 2
 ``` 
 $x = PSnmap -Cn 192.168.1.1/24, synology, ubuntuvm, vista64esxi -Port 22,3389,80,443 -Dns #-Verbose
 ``` 
 ```yam 
 PS C:\> $x | Where { $_.'Port 22' } | Format-Table -AutoSize

ComputerName  IP/DNS       Ping Port 22 Port 80 Port 443 Port 3389
------------  ------       ---- ------- ------- -------- ---------
192.168.1.31  ubuntuvm     True    True    True    False     False
192.168.1.77               True    True   False    False     False
192.168.1.84  synology     True    True    True     True     False
192.168.1.166              True    True    True     True     False
192.168.1.234 elitebook    True    True   False    False      True
synology      192.168.1.84 True    True    True     True     False
ubuntuvm      192.168.1.31 True    True    True    False     False
 ``` 


## PARAMETERS

### ComputerName
 ```yam 
 -ComputerName <String[]>
    List of CIDR, IP/subnet, IP or DNS/NetBIOS name.
    
    Required?                    true
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Port
 ```yam 
 -Port <Int32[]>
    Port or ports to check.
    
    Required?                    false
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Dns
 ```yam 
 -Dns [<SwitchParameter>]
    Perform a DNS lookup.
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ScanOnPingFail
 ```yam 
 -ScanOnPingFail [<SwitchParameter>]
    Scan all hosts even if ping fails.
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ThrottleLimit
 ```yam 
 -ThrottleLimit <Int32>
    Number of concurrent threads. Default: 32.
    
    Required?                    false
    Position?                    3
    Default value                32
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### HideProgress
 ```yam 
 -HideProgress [<SwitchParameter>]
    Do not display progress with Write-Progress
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Timeout
 ```yam 
 -Timeout <Int32>
    Timeout in seconds for each thread. Causes problems if too short. 30 as a default seems OK.
    
    Required?                    false
    Position?                    4
    Default value                30
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### PortConnectTimeoutMs
 ```yam 
 -PortConnectTimeoutMs <Int32>
    Port connect timeout in milliseconds. 5 seconds as a default for LAN scans. Increase for mobile/slow WAN.
    
    Required?                    false
    Position?                    5
    Default value                5000
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### NoSummary
 ```yam 
 -NoSummary [<SwitchParameter>]
    Do not display the end summary with start and end time, using Write-Host.
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### AddService
 ```yam 
 -AddService [<SwitchParameter>]
    Add IANA service for the port number in parentheses.
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



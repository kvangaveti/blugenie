# Get-BluGenieIPrange

## SYNOPSIS
Get the IP addresses in a range

## SYNTAX
```
Get-BluGenieIPrange [[-start] <String>] [[-end] <String>] [[-ip] <String>] [[-mask] <String>] [[-cidr] <Int32>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES

### EXAMPLE 1
 ``` 
 Get-BluGenieIPrange -start 192.168.8.2 -end 192.168.8.20
 ``` 
 ```yam 
 
 ``` 
 
### EXAMPLE 2
 ``` 
 Get-BluGenieIPrange -ip 192.168.8.2 -mask 255.255.255.0
 ``` 
 ```yam 
 
 ``` 
 
### EXAMPLE 3
 ``` 
 Get-BluGenieIPrange -ip 192.168.8.3 -cidr 24
 ``` 
 ```yam 
 
 ``` 


## PARAMETERS

### start
 ```yam 
 -start <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### end
 ```yam 
 -end <String>
    
    Required?                    false
    Position?                    2
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ip
 ```yam 
 -ip <String>
    
    Required?                    false
    Position?                    3
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### mask
 ```yam 
 -mask <String>
    
    Required?                    false
    Position?                    4
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### cidr
 ```yam 
 -cidr <Int32>
    
    Required?                    false
    Position?                    5
    Default value                0
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



# Resolve-BluGenieDnsName

## SYNOPSIS
Resolve-BluGenieDnsName will validate a Domain Name and test if the system is online

## SYNTAX
```
Resolve-BluGenieDnsName [[-ComputerName] <String[]>] [[-TestConnection]] [[-TimeToLive] <Int32>] [[-ReturnObject]] [[-Walkthrough]] [[-OutUnEscapedJSON]] [<CommonParameters>]
```

## DESCRIPTION
Resolve-BluGenieDnsName will validate a Domain Name and test if the system is online.
Validating a Domain Name will resolve an IP to a hostname.
If the system is pingable the OS type will be identified as well.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Resolve-BluGenieDnsName -ComputerName 172.217.15.110 -ReturnObject -TestConnection -TimeToLive 25
 ``` 
 ```yam 
 This will try and resolve the IP to a Domain name.  It will also see if the system is online.  The time to live is set to 25ms however the default is 12.
The items will be returned in an object
 ``` 
 
### EXAMPLE 2
 ``` 
 Resolve-BluGenieDnsName -ComputerName 'Test-PC1','Test-PC2','10.0.0.25','10.0.026' -ReturnObject -TestConnection
 ``` 
 ```yam 
 This will try and resolve the IP's to a Domain name.  It will also see if all the systems are online.  The time to live is 12ms by default.
The items will be returned in an object
 ``` 
 
### EXAMPLE 3
 ``` 
 Resolve-BluGenieDnsName -ComputerName 'Test-PC1','Test-PC2','10.0.0.25','10.0.026' -ReturnObject
 ``` 
 ```yam 
 The items will be returned in an object
 ``` 
 
### EXAMPLE 4
 ``` 
 Resolve-BluGenieDnsName -ComputerName 10.0.0.25 -Test:$false
 ``` 
 ```yam 
 This will try and resolve the IP's to a Domain name.
There will be no action to ping the device.  (Test / TestConnection) is set to $false.  By default (Test / TestConnection ) is set to $true
The items will be returned in a object by default
 ``` 
 
### EXAMPLE 5
 ``` 
 Resolve-BluGenieDnsName -ComputerName 10.0.026 -OutUnEscapedJSON
 ``` 
 ```yam 
 This will try and resolve the IP's to a Domain name.
The items will be returned in a beautified JSON report
 ``` 


## PARAMETERS

### ComputerName
 ```yam 
 -ComputerName <String[]>
    One or more computer names or IP Address.
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### TestConnection
 ```yam 
 -TestConnection [<SwitchParameter>]
    Test if the system is pingable
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    2
    Default value                True
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### TimeToLive
 ```yam 
 -TimeToLive <Int32>
    The amount of time for the connect to wait before timing out.  
    The default valie is ( 12 )
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    3
    Default value                12
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### ReturnObject
 ```yam 
 -ReturnObject [<SwitchParameter>]
    Return information as an Object.
    By default the data is returned as a Hash Table
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    4
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    An automated process to walk through the current function and all the parameters
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    5
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### OutUnEscapedJSON
 ```yam 
 -OutUnEscapedJSON [<SwitchParameter>]
    Removed UnEsacped Char from the JSON Return.
    This will beautify json and clean up the formatting.
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    6
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



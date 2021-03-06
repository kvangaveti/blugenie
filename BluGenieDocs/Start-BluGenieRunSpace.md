# Start-BluGenieRunSpace

## SYNOPSIS
Start-BluGenieRunSpace will run a list of commands or scriptblocks in parallel

## SYNTAX
```
Start-BluGenieRunSpace [-maxThreads <Int32>] [-maxJobs <Int32>] [-slotTimer <Int32>] [-sleepTimer <Int32>] [-processJobsInterval <Int32>] [-commands <String[]>] [-StatusMessage <String>] [[-Walkthrough]] [[-ReturnObject]] [[-OutUnEscapedJSON]] 
[<CommonParameters>]
```

## DESCRIPTION
Start-BluGenieRunSpace will run a list of commands or scriptblocks in parallel

## EXAMPLES

### EXAMPLE 1
 ``` 
 
 ``` 
 ```yam 
 
 ``` 


## PARAMETERS

### maxThreads
 ```yam 
 -maxThreads <Int32>
    Set the Max Threads to run in parallel
    
    The default is set to ( 0 / Zero ).  If left to ( 0 / Zero ) the maxThreads count will be set to ( The total command count )
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    named
    Default value                0
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### maxJobs
 ```yam 
 -maxJobs <Int32>
    Set the Max Jobs to run manage in a queue
    
    The default is set to ( 0 / Zero ).  If left to ( 0 / Zero ) the maxJobs count will be set to ( 20 + maxThreads )
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    named
    Default value                0
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### slotTimer
 ```yam 
 -slotTimer <Int32>
    Number of Milliseconds for slot-free-waiting
    
    The default is set to ( 50 ).
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    named
    Default value                50
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### sleepTimer
 ```yam 
 -sleepTimer <Int32>
    Number of Milliseconds for loop-waiting
    
    The default is set to ( 500 ).
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    named
    Default value                500
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### processJobsInterval
 ```yam 
 -processJobsInterval <Int32>
    Process completed jobs every x number of items
    
    The default is set to ( 5 ).
    
    <Type>Int<Type>
    
    Required?                    false
    Position?                    named
    Default value                5
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### commands
 ```yam 
 -commands <String[]>
    A list of commands or ScriptBlocks to action in a seperate PowerShell RunSpace
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### StatusMessage
 ```yam 
 -StatusMessage <String>
    
    Required?                    false
    Position?                    named
    Default value                Verbose
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    An automated process to walk through the current function and all the parameters
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    7
    Default value                False
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
    Position?                    10
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
    Position?                    11
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



# Show-BluGenieMore

## SYNOPSIS
Show-BluGenieMore is a command used to view content one screen at a time in case the file is large.

## SYNTAX
```
Show-BluGenieMore [[-Source] <Object>] [[-LineCount] <Int32>] [[-Suffix] <String>] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Show-BluGenieMore is a command used to view content one screen at a time in case the file is large.  You can
define how many lines are diplayed to the screen as well.  The default is 25.

## EXAMPLES

### EXAMPLE 1
 ``` 
 Command: ,$(Get-ChildItem -Path $env:windir\System32 -File | Select-Object -ExpandProperty FullName) | Show-BluGenieMore
 ``` 
 ```yam 
 Description: Query C:\Windows\System32 for all files and display the Full Path names 25 lines per page using the Pipeline
Notes: 
While sending content over the pipeline you need to use an Unary Comma Operator.
       As a binary operator, the comma creates an array. As a unary operator, the comma creates an array with one member. Place the comma before the member.

       ,$MyArray | More
 ``` 
 
### EXAMPLE 2
 ``` 
 Command: ,$(Get-ChildItem -Path $env:windir\System32 -File | Select-Object -ExpandProperty FullName) | More
 ``` 
 ```yam 
 Description: Query C:\Windows\System32 for all files and display the Full Path names using the Show-BluGenieMore Alias
Notes: 
While sending content over the pipeline you need to use an Unary Comma Operator.
       As a binary operator, the comma creates an array. As a unary operator, the comma creates an array with one member. Place the comma before the member.

       ,$MyArray | More
 ``` 
 
### EXAMPLE 3
 ``` 
 Command: ,$(Get-ChildItem -Path $env:windir\System32 -File | Select-Object -ExpandProperty FullName) | More -Suffix ' * ' -LineCount 30
 ``` 
 ```yam 
 Description: Display content 30 lines per page request.  Each line item will have a Suffix ' * ' appended.
Notes:
 ``` 
 
### EXAMPLE 4
 ``` 
 Command: Show-BluGenieMore -Source $(Get-ChildItem -Path $env:windir\System32 -File | Select-Object -ExpandProperty FullName)
 ``` 
 ```yam 
 Description: Query C:\Windows\System32 for all files and display the Full Path names 25 lines per page using the Source Parameter
Notes:
 ``` 
 
### EXAMPLE 5
 ``` 
 Command: Show-BluGenieMore -Help
 ``` 
 ```yam 
 Description: Call Help Information
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 
 
### EXAMPLE 6
 ``` 
 Command: Show-BluGenieMore -WalkThrough
 ``` 
 ```yam 
 Description: Call Help Information [2]
Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter
 ``` 


## PARAMETERS

### Source
 ```yam 
 -Source <Object>
    Description: The content to display.  While sending content over the pipeline you need to use an Unary Comma Operator.
    Notes: 
    Comma operator ,
            As a binary operator, the comma creates an array. As a unary operator, the comma creates an array with one member. Place the comma before the member.
    
            ,$MyArray | More 
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### LineCount
 ```yam 
 -LineCount <Int32>
    Description: Define the line items to display.  The Default is 25.
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    2
    Default value                25
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Suffix
 ```yam 
 -Suffix <String>
    Description: Return each line with a suffix.  This can be used as a check list to mark each line. 
    Notes:  
    Alias:
    ValidateSet:
    
    Required?                    false
    Position?                    3
    Default value                
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



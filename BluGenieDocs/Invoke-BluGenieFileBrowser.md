# Invoke-BluGenieFileBrowser

## SYNOPSIS
Invoke-BluGenieFileBrowser will display a graphical user interface to select a file

## SYNTAX
```
Invoke-BluGenieFileBrowser [[-Filter] <String>] [[-InitialDirectory] <String>] [-Multiselect] [[-Description] <String>] [-Walkthrough] [<CommonParameters>]
```

## DESCRIPTION
Invoke-BluGenieFileBrowser will display a graphical user interface to select a file.

By default all files are shown in the GUI

## EXAMPLES

### EXAMPLE 1
 ``` 
 $MyFile = Invoke-BluGenieFileBrowser
 ``` 
 ```yam 
 This will display a GUI to select a single file.  The initial directory will be the root directory.
 ``` 
 
### EXAMPLE 2
 ``` 
 $MyFile = Invoke-BluGenieFileBrowser -Filter *.json -initialDirectory C:\Temp
 ``` 
 ```yam 
 This will dispaly a GUI to select a single JSON file.  The initial direcotry will be the C:\Temp directory.
 ``` 
 
### EXAMPLE 3
 ``` 
 $MyFiles = Invoke-BluGenieFileBrowser -Filter *.json -initialDirectory C:\Temp -Multiselect
 ``` 
 ```yam 
 This will dispaly a GUI to select multiple JSON files.  The initial direcotry will be the C:\Temp directory.
 ``` 
 
### EXAMPLE 4
 ``` 
 Invoke-BluGenieFileBrowser -Help
 ``` 
 ```yam 
 This will display the dynamical help to walk you through all the parameters for this function.
 ``` 


## PARAMETERS

### Filter
 ```yam 
 -Filter <String>
    Filter the list of files you would like shown in the dialog box
    
    Note:  The default is ( *.* )
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    1
    Default value                *.*
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### InitialDirectory
 ```yam 
 -InitialDirectory <String>
    Select the Initial directory to open the file select dialog box in.
    
    Note:  The default $env:Homedrive
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    2
    Default value                $('{0}\' -f $env:HOMEDRIVE)
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Multiselect
 ```yam 
 -Multiselect [<SwitchParameter>]
    Allow to select multple files
    
    Note:  The default is ( False )
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Description
 ```yam 
 -Description <String>
    Description or Caption to be presented in the dialog box.
    
    <Type>String<Type>
    
    Required?                    false
    Position?                    3
    Default value                Select a File
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### Walkthrough
 ```yam 
 -Walkthrough [<SwitchParameter>]
    An automated process to walk through the current function and all the parameters
    
    <Type>SwitchParameter<Type>
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).



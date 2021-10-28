#region Set-BluGenieCommands (Function)
    Function Set-BluGenieCommands
    {
        <#
        .SYNOPSIS 
            Set-BluGenieCommands is an add-on to manage the Command list in the BluGenie Console

        .DESCRIPTION
            Set-BluGenieCommands is an add-on to manage the Command list in the BluGenie Console

        .PARAMETER Add
            Add items to the list

            <Type>String<Type>

        .PARAMETER Remove
            Remove items from the list

            <Type>String<Type>

        .PARAMETER RemoveIndex
            Remove items from the list using the index value

            <Type>Int<Type>

        .PARAMETER RemoveAll
            Remove all commands from the Command list

            <Type>SwitchParameter<Type>

        .PARAMETER Walkthrough
            An automated process to walk through the current function and all the parameters

            <Type>SwitchParameter<Type>

        .EXAMPLE
            Set-BluGenieCommands

            This will give you a list of identified Commands

        .EXAMPLE
            Set-BluGenieCommands 'Get-SystemInfo'

            This will add the specified Commands to the Command list
        
        .EXAMPLE
            Set-BluGenieCommands -Add 'Get-SystemInfo','Invoke-Netstat','Get-ProcessList'

            This will add all of the specified Commands to the Command list

        .EXAMPLE
            Set-BluGenieCommands -Remove '^G'

            The -Remove command excepts (RegEx).  This will remove all items with a ( G ) as the first character

        .EXAMPLE
            Command -Remove 'Get-SystemInfo'

            The -Remove command excepts (RegEx).  This will remove all items with 'Get-SystemInfo' in the name

        .EXAMPLE
            Set-BluGenieCommands -Remove '^Get-SystemInfo$','^Get-ProcessList$'

            The -Remove command excepts (RegEx).  This will remove all items with that have an exact match of the Command name

        .EXAMPLE
           Set-BluGenieCommands -RemoveIndex 1

           This will remove the first item in the Command list

        .EXAMPLE
           Set-BluGenieCommands -RemoveIndex 1,10,12,15

           This will remove all the items from the Command list that have the specified index value.

           Note:  To get the Index value you can run (Set-BluGenieCommands).  This will show the Command list and the index values.

         .EXAMPLE
            Set-BluGenieCommands -RemoveAll

            This will remove all commands from the Command list
  
        .OUTPUTS
                TypeName: System.String

        .NOTES
            
            * Original Author           : Michael Arroyo
            * Original Build Version    : 1907.3101
            * Latest Author             : Michael Arroyo
            * Latest Build Version      : 20.06.0201
            * Comments                  : 
            * Dependencies              : 
                ~
            * Build Version Details     : 
                ~ 1907.3101: * [Michael Arroyo] Posted
                ~ 1908.0701: * [Michael Arroyo] Add the ( RemoveAll ) parameter
                ~ 20.06.0201:* [Michael Arroyo] Added check for the ConsoleCommands global variable
                                           
    #>
        [Alias('Commands')]
        Param
        (
            [String[]]$Add,

            [String[]]$Remove,

            [Int[]]$RemoveIndex,

            [Switch]$RemoveAll,

            [Alias('Help')]
            [Switch]$Walkthrough
        )

        #region WalkThrough (Ver: 1905.2401)
        <#.NOTES
            
            * Original Author           : Michael Arroyo
            * Original Build Version    : 1902.0505
            * Latest Author             : Michael Arroyo
            * Latest Build Version      : 1905.2401
            * Comments                  : 
            * Dependencies              : 
                                            ~
            * Build Version Details     : 
                                            ~ 1902.0505: * [Michael Arroyo] Posted
                                            ~ 1904.0801: * [Michael Arroyo] Updated the error control for the entire process to support External Help (XML) files
                                                         * [Michael Arroyo] Updated the ** Parameters ** section to bypass the Help indicator to support External Help (XML) files
                                                         * [Michael Arroyo] Updated the ** Options ** section to bypass the Help indicator to support External Help (XML) files
                                            ~ 1905.1302: * [Michael Arroyo] Converted all Where-Object references to PowerShell 2
                                            ~ 1905.2401: * [Michael Arroyo] Updated syntax based on PSAnalyzer
        #>
            If
            (
                $Walkthrough
            )
            {
                #region WalkThrough Defined Variables
                    #$Function = $($PSCmdlet.MyInvocation.InvocationName)
                    $Function = 'Commands'
                    $CurHelp = $(Get-Help -Name $Function -ErrorAction SilentlyContinue)
                    $CurExamples = $CurHelp.examples
                    $CurParameters = $CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -NE 'Walkthrough' } | Select-Object -ExpandProperty Name
                    $CurSyntax = $CurHelp.syntax
                    $LeaveWalkThrough = $false
                #endregion

                #region Main Do Until
                    Do
                    {
                        #region Build Current Command
                            $Walk_Command = $('{0}' -f $Function)
                            $CurParameters | ForEach-Object `
                            -Process `
                            {
                                $CurParameter = $_
                                $CurValue = $(Get-Item -Path $('Variable:\{0}' -f $CurParameter) -ErrorAction SilentlyContinue).Value
                                If
                                (
                                    $CurValue
                                )
                                {
                                    Switch
                                    (
                                        $CurValue
                                    )
                                    {
                                        $true
                                        {
                                            $Walk_Command += $(' -{0}' -f $CurParameter)
                                        }
                                        $false
                                        {
                                            
                                        }
                                        Default
                                        {
                                            $Walk_Command += $(' -{0} "{1}"' -f $CurParameter, $CurValue)
                                        }
                                    }
                                }
                            }
                        #endregion

                        #region Build Main Menu
                            #region Main Header
                                Write-Host $("`n")
                                Write-Host $('** Command Syntax **') -ForegroundColor Green
                                Write-Host $('{0}' -f $($CurSyntax | Out-String).Trim()) -ForegroundColor Cyan

                                Write-Host $("`n")
                                Write-Host $('** Current Command **') -ForegroundColor Green
                                Write-Host $('{0}' -f $Walk_Command) -ForegroundColor Cyan
                                Write-Host $("`n")

								Write-Host $('** Parameters **') -ForegroundColor Green
								$CurParameters | ForEach-Object `
								-Process `
								{
									If
									(
										$_ -ne 'Help'
									)
									{
										Write-Host $('{0}: {1}' -f $_, $(Get-Item -Path Variable:\$_ -ErrorAction SilentlyContinue).Value) -ForegroundColor Cyan
									}
								}
								
								Write-Host $("`n")
					            Write-Host $('** Options **') -ForegroundColor Green
								$CurParameters | ForEach-Object `
								-Process `
								{
									If
									(
										$_ -ne 'Help'
									)
									{
										Write-Host $("Type '{0}' to update value" -f $_) -ForegroundColor Yellow
									}
								}
								Write-Host $("Type 'Help' to view the Description for each Parameter") -ForegroundColor Yellow
                                Write-Host $("Type 'Examples' to view any Examples") -ForegroundColor Yellow
                                Write-Host $("Type 'Run' to Run the above (Current Command)") -ForegroundColor Yellow
                                Write-Host $("Type 'Exit' to Exit without running") -ForegroundColor Yellow

                                Write-Host $("`n")
                            #endregion

                            #region Main Prompt
                                $UpdateItem = Read-Host -Prompt 'Please make a selection'
                            #endregion

                            #region Main Switch for menu interaction
                                switch ($UpdateItem)
                                {
                                    #region Exit Main menu
                                        'Exit'
                                        {
                                            Return
                                        }
                                    #endregion

                                    #region Pull Parameter Type from the Static Help Parameter (If String)
                                        {
                                            Try
                                            {
                                                $($($CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -eq $UpdateItem } | Select-Object -ExpandProperty Description | Select-Object -ExpandProperty Text) -split '\<Type\>')[1] -eq 'String'
                                            }
                                            Catch
                                            {
                                                $null
                                            }
                                        }
                                        {
                                            Clear-Host
                                            $null = Remove-Variable -Name $UpdateItem -Force -ErrorAction SilentlyContinue
                                            $null = New-Item -Path $('Variable:\{0}' -f $UpdateItem) -Value $(Read-Host -Prompt $('Enter-{0}' -f $UpdateItem)) -Force -ErrorAction SilentlyContinue
                                        }
                                    #endregion

                                    #region Pull Parameter Type from the Static Help Parameter (If Int)
                                        {
                                            Try
                                            {
                                                $($($CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -eq $UpdateItem } | Select-Object -ExpandProperty Description | Select-Object -ExpandProperty Text) -split '\<Type\>')[1] -eq 'Int'
                                            }
                                            Catch
                                            {
                                                $null
                                            }
                                        }
                                        {
                                            Clear-Host
                                            $IntValue = $(Read-Host -Prompt $('Enter-{0}' -f $UpdateItem))
                                            Switch
                                            (
                                                $IntValue
                                            )
                                            {
                                                ''
                                                {
                                                     $null = Set-Item -Path $('Variable:\{0}' -f $UpdateItem) -Value $null -Force -ErrorAction SilentlyContinue
                                                }
                                                {
                                                    $IntValue -match '^[\d\.]+$'
                                                }
                                                {
                                                    $null = Set-Item -Path $('Variable:\{0}' -f $UpdateItem) -Value $IntValue -Force -ErrorAction SilentlyContinue
                                                }
                                                Default
                                                {
                                                    Clear-Host
                                                    Write-Host $('({0}) is not a valid [Int].  Please try again.' -f $IntValue) -ForegroundColor Red
                                                    Write-Host $("`n")
                                                    Pause
                                                }
                                            }
                                        }
                                    #endregion

                                    #region Pull Parameter Type from the Static Help Parameter (If SwitchParameter)
                                        {
                                            Try
                                            {
                                                $($($CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -eq $UpdateItem } | Select-Object -ExpandProperty Description | Select-Object -ExpandProperty Text) -split '\<Type\>')[1] -eq 'SwitchParameter'
                                            }
                                            Catch
                                            {
                                                $null
                                            }
                                        }
                                        {
                                            Clear-Host
                                            If
                                            (
                                                $(Get-Item -Path $('Variable:\{0}' -f $UpdateItem)).Value -eq $true
                                            )
                                            {
                                                $CurToggle = $false
                                            }
                                            Else
                                            {
                                                $CurToggle = $true
                                            }
                                            $null = Remove-Variable -Name $UpdateItem -Force -ErrorAction SilentlyContinue
                                            $null = New-Item -Path $('Variable:\{0}' -f $UpdateItem) -Value $CurToggle -Force
                                            $null = Remove-Variable -Name $CurToggle -Force -ErrorAction SilentlyContinue
                                        }
                                    #endregion

                                    #region Pull Parameter Type from the Static Help Parameter (If ValidateSet)
                                        {
                                            Try
                                            {
                                                $($($CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -eq $UpdateItem } | Select-Object -ExpandProperty Description | Select-Object -ExpandProperty Text) -split '\<Type\>')[1] -eq 'ValidateSet'
                                            }
                                            Catch
                                            {
                                                $null
                                            }
                                        }
                                        {
                                            $AllowedValues = $($($($CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -eq $UpdateItem }) | Select-Object -ExpandProperty Description | Select-Object -ExpandProperty Text) -split '\<ValidateSet\>')[1] -split ','
                                            Clear-Host

                                            Do
                                            {
                                                Write-Host $('** Validation Set **') -ForegroundColor Green
                                                $AllowedValues | ForEach-Object -Process { Write-Host $("Type '{0}' to update value" -f $_) -ForegroundColor Yellow}
                                                Write-Host $("Type 'Back' to go back to the main menu") -ForegroundColor Yellow
                                                Write-Host $("Type 'Null' to remove the current value") -ForegroundColor Yellow

                                                Write-Host $("`n")
                                                $ValidateSetInput = $null
                                                $ValidateSetInput = Read-Host -Prompt 'Please make a selection'

                                                Switch
                                                (
                                                    $ValidateSetInput
                                                )
                                                {
                                                    'Back'
                                                    {
                                                        $LeaveValidateSet = $true
                                                    }
                                                    'Null'
                                                    {
                                                        Set-Item -Path $('Variable:\{0}' -f $UpdateItem) -Value $null -ErrorAction SilentlyContinue
                                                        $LeaveValidateSet = $true
                                                    }
                                                    {
                                                        $AllowedValues -contains $ValidateSetInput
                                                    }
                                                    {
                                                        Set-Item -Path $('Variable:\{0}' -f $UpdateItem) -Value $ValidateSetInput -ErrorAction SilentlyContinue
                                                        $LeaveValidateSet = $true
                                                    }
                                                    Default
                                                    {
                                                        Clear-Host
                                                        Write-Host $('({0}) is not a valid option.  Please try again.' -f $ValidateSetInput) -ForegroundColor Red
                                                        Write-Host $("`n")
                                                        $LeaveValidateSet = $false
                                                    }
                                                }
                                            }
                                            Until
                                            (
                                                $LeaveValidateSet -eq $true
                                            )
                                        }
                                    #endregion

                                    #region Pull the Help information for each Parameter and Dynamically build the menu system
                                        'Help'
                                        {
                                            Clear-Host
                                            $LeaveHelpInput = $false

                                            Do
                                            {
                                                Write-Host $('** Help Parameter Information **') -ForegroundColor Green
                                                $CurParameters | ForEach-Object -Process { Write-Host $("Type '{0}' to view Help" -f $_) -ForegroundColor Yellow}
                                                Write-Host $("Type 'All' to list all Parameters and Help Information") -ForegroundColor Yellow
                                                Write-Host $("Type 'Help' to view the General Help information") -ForegroundColor Yellow
                                                Write-Host $("Type 'Full' to view the Detailed Help information") -ForegroundColor Yellow
                                                Write-Host $("Type 'ShowWin' to view the Detailed Help information in a Win-Form") -ForegroundColor Yellow
                                                Write-Host $("Type 'Back' to go back to the main menu") -ForegroundColor Yellow

                                                Write-Host $("`n")
                                                $HelpInput = $null
                                                $HelpInput = Read-Host -Prompt 'Please make a selection'

                                                Switch
                                                (
                                                    $HelpInput
                                                )
                                                {
                                                    'Back'
                                                    {
                                                        $LeaveHelpInput = $true
                                                    }
                                                    {
                                                        $CurParameters -contains $HelpInput
                                                    }
                                                    {
                                                        $CurHelp.parameters.parameter | Where-Object -FilterScript { $_.Name -eq $HelpInput } | Out-String
                                                        Pause
                                                    }
                                                    'All'
                                                    {
                                                        $CurHelp.parameters.parameter | Out-String
                                                        Pause
                                                    }
                                                    'Help'
                                                    {
                                                        Get-Help -Name $Function | Out-String
                                                        Pause
                                                    }
                                                    'Full'
                                                    {
                                                        Get-Help -Name $Function -Full | Out-String
                                                        Pause
                                                    }
                                                    'ShowWin'
                                                    {
                                                        Get-Help -Name $Function -ShowWindow
                                                        Pause
                                                    }
                                                    Default
                                                    {
                                                        Clear-Host
                                                        Write-Host $('({0}) is not a valid option.  Please try again.' -f $HelpInput) -ForegroundColor Red
                                                        Write-Host $("`n")
                                                    }
                                                }
                                            }
                                            Until
                                            (
                                                $LeaveHelpInput -eq $true
                                            )
                                        }
                                    #endregion

                                    #region Pull the Examples information and Dynamically build the menu system
                                        'Examples'
                                        {
                                            Clear-Host
                                            $LeaveExampleInput = $false
                                            $CurExamplesList = $($CurHelp.examples.example | Select-Object -ExpandProperty Title) -replace ('-') -replace (' ') -replace ('EXAMPLE')

                                            Do
                                            {
                                                Write-Host $('** Examples **') -ForegroundColor Green
                                                $CurExamplesList | ForEach-Object -Process { Write-Host $("Type '{0}' to view Example{0}" -f $_) -ForegroundColor Yellow}
                                                Write-Host $("Type 'All' to list all Examples") -ForegroundColor Yellow
                                                Write-Host $("Type 'Back' to go back to the main menu") -ForegroundColor Yellow

                                                Write-Host $("`n")
                                                $ExampleInput = $null
                                                $ExampleInput = Read-Host -Prompt 'Please make a selection'

                                                Switch
                                                (
                                                    $ExampleInput
                                                )
                                                {
                                                    'Back'
                                                    {
                                                        $LeaveExampleInput = $true
                                                    }
                                                    {
                                                        $CurExamplesList -contains $ExampleInput
                                                    }
                                                    {
                                                        $CurHelp.examples.example | Where-Object -FilterScript { $_.Title -Match $('EXAMPLE\s{0}' -f $ExampleInput) }
                                                        Pause
                                                    }
                                                    'All'
                                                    {
                                                        $CurHelp.examples.example
                                                        Pause
                                                    }
                                                    Default
                                                    {
                                                        Clear-Host
                                                        Write-Host $('({0}) is not a valid option.  Please try again.' -f $ExampleInput) -ForegroundColor Red
                                                        Write-Host $("`n")
                                                    }
                                                }
                                            }
                                            Until
                                            (
                                                $LeaveExampleInput -eq $true
                                            )
                                        }
                                    #endregion

                                    #region Run the Current Command
                                        'Run'
                                        {
                                            #Exiting Switch and Running set Parameters
                                            $LeaveWalkThrough = $true
                                        }
                                    #endregion

                                    #region Default (Error Control)
                                        Default
                                        {
                                            Clear-Host
                                            Write-Host $('({0}) is not a valid option.  Please try again.' -f $UpdateItem) -ForegroundColor Red
                                            Write-Host $("`n")
                                            $LeaveWalkThrough = $false
                                            Pause
                                        }
                                    #endregion
                                }
                            #endregion
                        #endregion
                    }
                    Until
                    (
                        $LeaveWalkThrough -eq $true
                    )
                #endregion
            }
        #endregion

        #region Main
            #region Check Global Variable
                If
                (
                    -Not $Global:ConsoleCommands
                )
                {
                    [System.Collections.ArrayList]$Global:ConsoleCommands = @()
                }
            #endregion Check Global Variable

            Switch
            (
                $null
            )
            {
                #region Add items to list
                    {$Add}
                    {
                        $Add | ForEach-Object `
                        -Process `
                        {
                            If
                            (
                                $global:ConsoleCommands -contains $_
                            )
                            {
                                $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                $ConsoleCommandsMsg = '..Already Added..'
                                write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Red
                            }
                            Else
                            {
                                $null = $global:ConsoleCommands.Add($_)
                                $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                $ConsoleCommandsMsg = '..Added..'
                                write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Green
                            }
                        }

                        Write-Host "`n"
                    }
                #endregion Add items to list

                #region Remove items from list
                    {$Remove}
                    {
                        If
                        (
                            $global:ConsoleCommands
                        )
                        {
                            $RemoveFilter = $Remove | ForEach-Object `
                            -Process `
                            {
                                $CurRemoveItem = $_
                                $global:ConsoleCommands | Select-String -Pattern $CurRemoveItem
                            }

                            If
                            (
                                $RemoveFilter
                            )
                            {
                                $RemoveFilter | ForEach-Object `
                                -Process `
                                {
                                    If
                                    (
                                        $global:ConsoleCommands -contains $_
                                    )
                                    {
                                        $null = $global:ConsoleCommands.Remove("$_")
                                        $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                        $ConsoleCommandsMsg = '..Removed..'
                                        write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                        Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Green
                                    }
                                    Else
                                    {
                                        $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                        $ConsoleCommandsMsg = '..Item Not Found..'
                                        write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                        Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Red
                                    }
                                }

                                Write-Host "`n"
                            }
                            Else
                            {
                                $Remove | ForEach-Object `
                                -Process `
                                {
                                    $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                    $ConsoleCommandsMsg = '..Item Not Found..'
                                    write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                    Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Red
                                }

                                Write-Host "`n"
                            }
                        }
                        Else
                        {
                            Write-Host 'No Commands identified' -ForegroundColor Red
                        }
                        
                    }
                #endregion Remove items from list

                #region Remove items from list
                    {$RemoveAll -eq $true}
                    {
                        If
                        (
                            $global:ConsoleCommands
                        )
                        {
                            $global:ConsoleCommands | ForEach-Object `
                            -Process `
                            {
                                $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                $ConsoleCommandsMsg = '..Removed..'
                                write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Green
                            }
                            Write-Host "`n"
                        }
                        Else
                        {
                            Write-Host 'No Commands identified' -ForegroundColor Red
                        }
                        
                        [System.Collections.ArrayList]$global:ConsoleCommands = @()
                    }
                #endregion Remove items from list

                #region Remove items from list using the index value
                    {$RemoveIndex}
                    {
                        If
                        (
                            $global:ConsoleCommands
                        )
                        {
                            $RemoveIndex | Sort-Object -Descending | ForEach-Object `
                            -Process `
                            {
                                $CurStringValue = $global:ConsoleCommands[$($_ - 1)]

                                If
                                (
                                    $global:ConsoleCommands[$($_ - 1)]
                                )
                                {
                                    $null = $global:ConsoleCommands.RemoveAt($_ - 1)
                                    $ConsoleCommandsText = "$CurStringValue".PadRight(25,' ') + "|| `t"
                                    $ConsoleCommandsMsg = '..Removed..'
                                    write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                    Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Green
                                }
                                Else
                                {
                                    $ConsoleCommandsText = "$CurStringValue".PadRight(25,' ') + "|| `t"
                                    $ConsoleCommandsMsg = '..Item Not Found..'
                                    write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Yellow
                                    Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Red
                                }
                            }

                            Write-Host "`n"
                        }
                        Else
                        {
                            Write-Host 'No Commands identified' -ForegroundColor Red
                        }
                    }
                #endregion Remove items from list using the index value

                #region Default (Show list values)
                    Default
                    {
                        If
                        (
                            $global:ConsoleCommands
                        )
                        {
                            $IndexCounter = 1

                            Write-Host 'Commands identified' -ForegroundColor Yellow
                            $global:ConsoleCommands | ForEach-Object `
                            -Process `
                            {
                                $ConsoleCommandsText = "$_".PadRight(25,' ') + "|| `t"
                                $ConsoleCommandsMsg = $('..Index [{0}]..' -f $IndexCounter)
                                write-host -NoNewline $("`n{0}" -f $ConsoleCommandsText) -ForegroundColor Green
                                Write-Host -NoNewline $ConsoleCommandsMsg -ForegroundColor Yellow
                                $IndexCounter ++
                            }

                            Write-Host "`n"
                        }
                        Else
                        {
                            Write-Host 'No Commands identified' -ForegroundColor Red
                        }
                    }
                #endregion Default (Show list values)
            }
        #endregion Main
    }
#endregion Set-BluGenieCommands (Function)
#region Get-BluGenieTranscriptsFile (Function)
Function Get-BluGenieTranscriptsFile
{
<#
    .SYNOPSIS
        Display the Transcripts File Path

    .DESCRIPTION
        Display the Transcripts File Path

    .PARAMETER Walkthrough
        Description:  Start the dynamic help menu system to help walk through the current command and all of the parameters
        Notes:  
        Alias: Help
        ValidateSet: 

    .EXAMPLE
	    Command: Get-BluGenieTranscriptsFile
        Description: Display the Get-BluGenieTranscriptsFile Path
        Notes: 
		
    .EXAMPLE
	    Command: Get-BluGenieTranscriptsFile -Help
        Description: Call Help Information
        Notes: If Help / WalkThrough is setup as a parameter, this script will be called to setup the Dynamic Help Menu if not the normal Get-Help will be called with the -Full parameter

    .OUTPUTS
        TypeName: System.String

    .NOTES

        * Original Author           : Michael Arroyo
        * Original Build Version    : 1911.2301
        * Latest Author             : Michael Arroyo
        * Latest Build Version      : 1911.2601
        * Comments                  :
        * Dependencies              :
                                        ~ Invoke-WalkThrough            - Invoke-WalkThrough is an interactive help menu system
        * Build Version Details     :
                                        ~ 1911.2301: * [Michael Arroyo] Posted
										~ 1911.2601: * [Michael Arroyo] Fixed the missing WalkThrough sub function
                                                    
#>
    [cmdletbinding()]
    [Alias('TranscriptsFile')]
    Param
    (
        [Alias('Help')]
        [Switch]$Walkthrough
    )
	
	#region WalkThrough (Dynamic Help)
        If
        (
            $Walkthrough
        )
        {
            If
            (
                $($PSCmdlet.MyInvocation.InvocationName)
            )
            {
                $Function = $($PSCmdlet.MyInvocation.InvocationName)
            }
            Else
            {
                If
                (
                    $Host.Name -match 'ISE'
                )
                {
                    $Function = $(Split-Path -Path $psISE.CurrentFile.FullPath -Leaf) -replace '((?:.[^.\r\n]*){1})$'
                }
            }

            If
            (
                Test-Path -Path Function:\Invoke-WalkThrough -ErrorAction SilentlyContinue
            )
            {
                If
                (
                    $Function -eq 'Invoke-WalkThrough'
                )
                {
                    #Disable Invoke-WalkThrough looping
                    Invoke-Command -ScriptBlock { Invoke-WalkThrough -Name $Function -RemoveRun }
                    Return
                }
                Else
                {
                    Invoke-Command -ScriptBlock { Invoke-WalkThrough -Name $Function }
                    Return
                }
            }
            Else
            {
                Get-Help -Name $Function -Full
                Return
            }
        }
    #endregion WalkThrough (Dynamic Help)

    #region Output
        Write-Host $('TranscriptsFile Path: {0}' -f $TranscriptsFile)
    #endregion Output
}
#endregion Get-BluGenieTranscriptsFile (Function)
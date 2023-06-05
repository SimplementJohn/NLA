clear
$nomMachine = hostname
(Get-WmiObject -class "Win32_TSGeneralSetting" -Namespace root\cimv2\terminalservices -ComputerName $nomMachine -Filter "TerminalName='RDP-tcp'").SetUserAuthenticationRequired(0)
Write-Output ""
$attente = read-host " Voila désactivation du NLA "
Write-Output ""
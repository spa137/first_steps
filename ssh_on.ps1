Add-WindowsCapability -Online -Name OpenSSH.Server*

# or DISM  dism /Online /Add-Capability /CapabilityName:OpenSSH.Server~~~~0.0.1.0
# check instal   Get-WindowsCapability -Online | ? Name -like 'OpenSSH.Ser*'

Set-Service -Name sshd -StartupType 'Automatic'
Start-Service sshd

# check netstat -na| find ":22"
# Get-NetFirewallRule -Name *OpenSSH-Server* |select Name, DisplayName, Description, Enabled

# port open       New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22

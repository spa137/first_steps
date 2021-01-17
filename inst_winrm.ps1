# WinRM install powershell http://onreader.mdl.ru/MasteringAnsible.3ed/content/Ch03.html


$ansibleconfigurl = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"

$ansibleconfig = "$env:temp\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($ansibleconfigurl, $ansibleconfig)

# run

powershell.exe -ExecutionPolicy ByPass -File $ansibleconfig


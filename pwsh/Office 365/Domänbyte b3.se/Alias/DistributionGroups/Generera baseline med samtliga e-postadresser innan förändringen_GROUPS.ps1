Connect-EXOPSSession

$ErrorActionPreference = "Stop"

Class Group
{
    [String]$DisplayName
    [String]$EmailAddresses
}


$Groups = Get-DistributionGroup
$ListOfGroups = @()


foreach ($Group in $Groups)
{
    $EmailAddresses = $Group.EmailAddresses
    $MailboxRow = New-Object Group
    $MailboxRow.DisplayName = $Group.DisplayName
    $MailboxRow.EmailAddresses = $EmailAddresses
    $ListOfGroups += $MailboxRow
}


$ListOfGroups | Export-Csv -Path "C:\Temp\Baseline samtliga adresser_GROUPS.csv" -Encoding Unicode -Delimiter "," -NoTypeInformation
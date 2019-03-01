Param
(
  [Parameter (Mandatory= $true)]
  [String] $VMName,

  [Parameter (Mandatory= $true)]
  [String] $ResourceGroup
)



$Conn = Get-AutomationConnection -Name AzureRunAsConnection

Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationID $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

Start-AzureRmVM -Name $VMName -ResourceGroupName $ResourceGroup
New-NetFirewallRule -DisplayName "Allow TCP port 5022 inbound" -Direction inbound -Profile Any -Action Allow -Localport 5022 -Protocol TCP 
New-NetFirewallRule -DisplayName "Allow TCP port 5022 outbound" -Direction outbound -Profile Any -Action Allow -Localport 5022 -Protocol TCP 

New-NetFirewallRule -DisplayName "Allow TCP port 1433 inbound" -Direction inbound -Profile Any -Action Allow -Localport 1433 -Protocol TCP 
New-NetFirewallRule -DisplayName "Allow TCP port 1433 outbound" -Direction outbound -Profile Any -Action Allow -Localport 1433 -Protocol TCP 


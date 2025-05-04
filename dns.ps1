# Install DNS role and management tools
Install-WindowsFeature -name dns -IncludeManagementTools

# Add DNS Primary Zone
Add-DnsServerPrimaryZone -Name "ngcp_.ph" -ZoneFile "ngcp_.ph.dns"

# Add DNS records
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name ns -ipv4address 10._.1.10
add-DnsServerResourceRecord -zonename ngcp_.ph -Cname -name www -hostname ns.ngcp_.ph
add-DnsServerResourceRecord -zonename ngcp_.ph -Cname -name imap -hostname ns.ngcp_.ph
add-DnsServerResourceRecord -zonename ngcp_.ph -Cname -name pop -hostname ns.ngcp_.ph
add-DnsServerResourceRecord -zonename ngcp_.ph -Cname -name smtp -hostname ns.ngcp_.ph

# FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name cb -ipv4address 10._.1.4
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name ct -ipv4address 10._.1.2
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name cm -ipv4address 10._.100.8
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name ed -ipv4address 10._._.1
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name p1 -ipv4address 10._.100.101
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name p2 -ipv4address 10._.100.102
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name c1 -ipv4address 10._.50.6
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name c2 -ipv4address 10._.50.8
add-DnsServerResourceRecord -zonename ngcp_.ph -A -name ap -ipv4address 10._.10.3

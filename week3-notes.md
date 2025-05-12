# Week 3 Notes

## Difference between ```dig```, ```nslookup```, and ```resolvectl```
`dig` is a command-line tool that sends a DNS query and shows detailed information about the domain, including the type of DNS records (A, MX, etc.), response time, and which DNS server was used.  
`nslookup` also performs DNS lookups but with a simpler, less detailed output.  
`resolvectl` shows the current DNS configuration on your system (which DNS servers are being used, for which interfaces), but it does not send queries like `dig` or `nslookup`.

## How DNS Resolution Works
On this system, DNS resolution works by consulting the DNS servers configured in `/etc/resolv.conf` (or through `systemd-resolved` if it’s in use). When you try to reach a domain name, your system sends a query to one of these DNS servers to get the corresponding IP address.

## DNS Trouble Shooting Tips
| Symptom | Try This | Why |
| ------- | -------- | --- |
| DNS queries failing | ```ping 8.8.8.8``` | Tests if basic network connection works without DNS |
| Slow/no resolution | ```dig google.com``` or ```nslookup google.com``` | Checks if DNS server is responding |
| Suspect wrong DNS server | ```resolvectl status``` | See which DNS your system is actually using |
| Broken DNS | Check ```/etc/resolv.conf``` | See if it has valid nameservers or is empty |
| Temporary fix | Add a known DNS: ```echo "nameserver 8.8.8.8" sudo tee /etc/resolv.conf``` | - |

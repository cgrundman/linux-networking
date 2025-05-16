# Linux Networking
Basics in Linux and Networking

## 🧠 Linux Networking Challenge Roadmap (Parts 1–6)

| **Part** | **Focus Area** | **Tools/Commands** | **Goals** | **Challenges** |
|----------|----------------|--------------------|-----------|----------------|
| 1 | [Linux Networking Basics](./part1/part1.md) | `ip a`, `ip r`, `ping`, `hostname`, `whoami`, `/etc/hosts`, `/etc/resolv.conf` | Understand IP setup, DNS basics, hostname resolution | 🔹 Run `ip a` and explain your IP<br>🔹 Ping Google and your gateway<br>🔹 Edit `/etc/hosts` to add a fake domain |
| 2 | [Connectivity & Routing](./part2/part2.md) | `traceroute`, `ss`, `netstat`, `ip route`, `curl`, `wget` | Understand routing, active connections, ports | 🔹 Trace route to Google<br>🔹 View open ports with `ss -tuln`<br>🔹 Get public IP with `curl ifconfig.me` |
| 3 | [DNS & Name Resolution](./part3/part3.md) | `dig`, `nslookup`, `resolvectl` | Learn DNS lookup and troubleshooting | 🔹 Use `dig` to resolve a domain<br>🔹 Change DNS server temporarily<br>🔹 Break/fix DNS via `/etc/resolv.conf` |
| 4 | [SSH & File Transfers](./part4/part4.md) | `ssh`, `scp`, `rsync`, `sshd`, `.ssh/config` | Remote access and secure file transfer | 🔹 Connect to another machine via SSH<br>🔹 Copy file with `scp`<br>🔹 Create an SSH alias in `.ssh/config` |
| 5 | [Firewalls & Security](#-part-5-firewalls--security) | `ufw`, `iptables`, `fail2ban` *(optional)* | Configure basic firewall rules | 🔹 Enable `ufw` and allow SSH<br>🔹 Block non-essential ports<br>🔹 Test firewall rule functionality |
| 6 | [Scanning & Traffic Monitoring](#-part-6-network-monitoring--diagnostics) | `nmap`, `tcpdump`, `iftop`, `nethogs` | Scan networks, monitor traffic & bandwidth | 🔹 Scan your LAN with `nmap`<br>🔹 Capture packets with `tcpdump`<br>🔹 Monitor usage with `iftop` or `nethogs` |

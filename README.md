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

---



---



---



---



---

### 💡 Bonus Mini-Project:
**"Lockdown and Access Test":** Set up a local service (like Python HTTP server or netcat), scan it with nmap, then block it with UFW. Write a short log of the steps and what you observed.

---

## 📅 Part 6: Network Monitoring & Diagnostics
**Goal:** Learn to inspect network traffic, monitor usage, and diagnose issues with real-time and historical tools.

---

### 🔧 Tools You’ll Use:
 - `iftop` or `nethogs`
 - `tcpdump`
 - `netstat` / `ss`
 - `ip`
 - `journalctl` / `dmesg`

---

### ✅ Tasks & Concepts
| # | Task | Command or Action | What You’re Learning |
|---|------|-------------------|----------------------|
| 1 | Monitor bandwidth per connection | `sudo iftop` or `sudo nethogs` | See which processes use your bandwidth |
| 2 | View open ports and listening services | `ss -tuln` or `netstat -tuln` | Real-time info on what ports are being used |
| 3 | Capture packets on an interface | `sudo tcpdump -i <interface>` | See actual packets being sent and received |
| 4 | Capture and save packets to a file | `sudo tcpdump -i <interface> -w capture.pcap` | Store traffic to analyze later with Wireshark |
| 5 | Inspect network interfaces and stats | `ip a and ip -s link` | View traffic and errors on each network device |
| 6 | Read kernel logs for network errors | `dmesg` | grep ethorjournalctl -u NetworkManager` |
| 7 | Filter tcpdump for a specific port or host | `sudo tcpdump port 22` or `host google.com` | Learn to target traffic of interest |
| 8 | (Optional) Analyze .pcap with Wireshark | Open `capture.pcap` in Wireshark | Use a GUI to visually inspect traffic patterns |

---

### 💡 Bonus Mini-Project:
**"What’s My Network Doing?":** 
1. Run iftop or nethogs while browsing and downloading files.
2. Capture packets using tcpdump during the activity.
3. Analyze the .pcap file or summarize the activity:
     - What IPs were contacted?
     - What ports were used?
     - What used the most bandwidth?

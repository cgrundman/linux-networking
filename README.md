# Linux Networking
Basics in Linux and Networking

## 🧠 Linux Networking Challenge Roadmap (Weeks 1–6)

| **Week** | **Focus Area** | **Tools/Commands** | **Goals** | **Challenges** |
|----------|----------------|--------------------|-----------|----------------|
| 1 | [Linux Networking Basics](#-week-1-linux-networking-basics) | `ip a`, `ip r`, `ping`, `hostname`, `whoami`, `/etc/hosts`, `/etc/resolv.conf` | Understand IP setup, DNS basics, hostname resolution | 🔹 Run `ip a` and explain your IP<br>🔹 Ping Google and your gateway<br>🔹 Edit `/etc/hosts` to add a fake domain |
| 2 | [Connectivity & Routing](#-week-2-connectivity--routing) | `traceroute`, `ss`, `netstat`, `ip route`, `curl`, `wget` | Understand routing, active connections, ports | 🔹 Trace route to Google<br>🔹 View open ports with `ss -tuln`<br>🔹 Get public IP with `curl ifconfig.me` |
| 3 | [DNS & Name Resolution](#-week-3-dns--name-resolution) | `dig`, `nslookup`, `resolvectl` | Learn DNS lookup and troubleshooting | 🔹 Use `dig` to resolve a domain<br>🔹 Change DNS server temporarily<br>🔹 Break/fix DNS via `/etc/resolv.conf` |
| 4 | [SSH & File Transfers](#-week-4-ssh--file-transfers) | `ssh`, `scp`, `rsync`, `sshd`, `.ssh/config` | Remote access and secure file transfer | 🔹 Connect to another machine via SSH<br>🔹 Copy file with `scp`<br>🔹 Create an SSH alias in `.ssh/config` |
| 5 | [Firewalls & Security](#-week-5-firewalls--security) | `ufw`, `iptables`, `fail2ban` *(optional)* | Configure basic firewall rules | 🔹 Enable `ufw` and allow SSH<br>🔹 Block non-essential ports<br>🔹 Test firewall rule functionality |
| 6 | Scanning & Traffic Monitoring | `nmap`, `tcpdump`, `iftop`, `nethogs` | Scan networks, monitor traffic & bandwidth | 🔹 Scan your LAN with `nmap`<br>🔹 Capture packets with `tcpdump`<br>🔹 Monitor usage with `iftop` or `nethogs` |



## 📅 Week 1: Linux Networking Basics  
**Goal:** Understand how your computer connects to a network and resolves names (like websites).

---

### 🔧 Tools/Commands You'll Use:
- `ip a`
- `ip r`
- `ping`
- `hostname` / `whoami`
- `/etc/hosts`
- `/etc/resolv.conf`

---

### ✅ Tasks & Challenges

| # | Task | Command or Action | What You're Learning |
|---|------|-------------------|----------------------|
| 1 | Check your IP address | `ip a` | See your IP and interface names (e.g., `eth0`, `wlan0`) |
| 2 | Find your default gateway | `ip r` | Shows how your traffic routes to the internet |
| 3 | Test connectivity | `ping 8.8.8.8` or `ping google.com` | Test if you can reach another machine |
| 4 | See your hostname and user | `hostname`, `whoami` | Your computer’s name and current user |
| 5 | Look inside your hosts file | `cat /etc/hosts` | Understand how name resolution works locally |
| 6 | Add a fake domain to hosts | Add `127.0.0.1 myfake.local` to `/etc/hosts` | Map a fake domain to localhost |
| 7 | Check DNS config | `cat /etc/resolv.conf` | See which DNS server your system uses |
| 8 | Try breaking name resolution | Comment out DNS in `/etc/resolv.conf`, try `ping google.com` | Understand what happens when DNS fails (be cautious!) |

---

### 💡 Bonus Mini Project:
Create a cheat sheet markdown file with:
- Your current IP address
- Default gateway
- Notes on what each command does

---

## 📅 Week 2: Connectivity & Routing
**Goal:** Understand how your computer reaches other networks, what connections it’s making, and how to explore them.

---

### 🔧 Tools You'll Use:
- `traceroute`
- `ss / netstat`
- `ip route`
- `curl`
- `wget`

---

### ✅ Tasks & Challenges

| # | Task | Command or Action | What You're Learning |
|---|------|-------------------|----------------------|
| 1	| Trace the path to a website | `traceroute google.com` | See how traffic moves across networks (needs traceroute package) |
| 2	| View active network connections | `ss -tuln` or `netstat -tuln` | Learn about open ports and listening services |
| 3	| List routing table | `ip route` | Understand how your system knows where to send traffic |
| 4	| Get your public IP address | `curl ifconfig.me` |	See how your system appears on the internet |
| 5	| Download a webpage manually | `curl https://example.com` or `wget https://example.com` | Practice using network tools to test HTTP requests |
| 6	| Save a webpage to a file | `wget https://example.com -o example.html`	| Explore basic file transfer over HTTP |
| 7	| Scan for a known port	| `ss -ltn sport = :22` | See if a specific port (e.g. SSH) is open and listening |

---

### 💡 Bonus Mini-Project:
Create a markdown report:
- Summary of what each command does
- Output samples from your system (anonymized if needed)
- Questions you had or things you want to explore further

---

## 📅 Week 3: DNS & Name Resolution
**Goal:** Learn how your system looks up domain names, troubleshoot DNS issues, and manipulate DNS settings.

---

### 🔧 Tools You'll Use:
 - `dig`
 - `nslookup`
 - `resolvectl`
 - `/etc/resolv.conf`

---

### ✅ Tasks & Challenges

| # | Task | Command or Action | What You’re Learning |
|---|------|-------------------|----------------------|
| 1 | Resolve a domain with `dig` | `dig google.com` | See how dig works and what information it returns (e.g., IP, DNS server) |
| 2 | Check DNS records with `nslookup` | `nslookup google.com` | Use nslookup to get A records (IPv4) or other records (e.g., MX for mail) |
| 3 | View current DNS settings with `resolvectl` | `resolvectl status` | See which DNS servers your system is using |
| 4 | Change DNS server temporarily | `sudo resolvectl dns eth0 8.8.8.8` | Learn how to change your DNS server temporarily for a network interface (eth0 in this case) |
| 5 | Check DNS resolution with `dig` after changing servers | `dig google.com` | Verify that DNS resolution uses the new DNS server |
| 6 | Inspect `/etc/resolv.conf` | `cat /etc/resolv.conf` | Look at your DNS configuration file and understand how it works |
| 7 | Temporarily break DNS | Edit `/etc/resolv.conf` and comment out nameserver lines | See what happens when DNS is broken (try ping google.com or dig google.com) |
| 8 | Fix DNS by restoring `/etc/resolv.conf` | Re-add a valid DNS server to `/etc/resolv.conf` | Learn how to restore DNS functionality by editing the config file |

---

### 💡 Bonus Mini-Project:
Write a brief report explaining:
 - The differences between `dig`, `nslookup`, and `resolvectl`
 - How DNS resolution works on your system
 - Any troubleshooting steps you took and how they fixed the DNS issues

---

## 📅 Week 4: SSH & File Transfers
**Goal:** Learn to connect to remote systems securely, transfer files, and streamline your workflow with SSH configuration.

---

### 🔧 Tools You'll Use:
 - `ssh`
 - `scp`
 - `rsync`
 - `sshd`
 - `~/.ssh/config`

---

### ✅ Tasks & Challenges
| # | Task | Command or Action | What You’re Learning |
|---|------|-------------------|----------------------|
| 1 | Test local SSH server (optional if available) | `ssh localhost` or `ssh user@your-ip` | Verify that SSH is installed and working locally |
| 2 | Connect to a remote machine | `ssh user@remote-ip` | Learn to access another system via SSH (can be a Raspberry Pi, virtual machine, or test server) |
| 3 | Copy a file to remote machine using `scp` | `scp myfile.txt user@remote-ip:~/home/user/` | Practice secure file transfer |
| 4 | Copy from remote to local | `scp user@remote-ip:~/home/user/notes.txt ./` | Download files from a remote system |
| 5 | Use rsync for syncing files | `rsync -av myfolder/ user@remote-ip:~/home/user/myfolder/` | Efficiently sync folders with resume and delta support |
| 6 | Add an SSH alias in `~/.ssh/config` | Add a block like: `Host myserver/HostName 192.168.1.10/User alice` | Connect using ssh myserver instead of the full command |
| 7 | Use the alias for `scp` or `ssh` | `scp file.txt myserver:~/tmp/` | Confirm your alias works for all SSH-based tools |
| 8 | Restart or verify `sshd` (if self-hosting) | `sudo systemctl status ssh` or `sudo systemctl restart ssh` | Ensure your machine is accepting SSH connections (skip if not hosting) |

---

### 💡 Bonus Mini-Project:
Create a simple script to sync a folder of notes between two machines using `rsync` and your `.ssh/config` alias.

---

## 📅 Week 5: Firewalls & Security
**Goal:** Learn how to control incoming/outgoing traffic on your system, manage firewall rules, and understand basic network-level security.

---

### 🔧 Tools You’ll Use:
 - `ufw` (Uncomplicated Firewall)
 - `iptables` (optional, advanced)
 - `nmap` (for scanning open ports)
 - `netcat` (nc, for basic listening/connections)

---

### ✅ Tasks & Concepts
| # | Task | Command or Action | What You’re Learning |
|---|------|-------------------|----------------------|
| 1 | Check firewall status	 | `sudo ufw status`	| See if a firewall is running and what it allows/blocks |
| 2	| Enable the firewall | `sudo ufw enable`	| Turn on basic firewall protection |
| 3	| Allow SSH through firewall | `sudo ufw allow ssh`	| Keep remote access open while firewall is on |
| 4	| Block a port (e.g., 8080) | `sudo ufw deny 8080`	| Understand how to restrict unwanted services |
| 5	| Check open ports with `nmap` | `nmap localhost`	| Learn how to scan your system from a network perspective |
| 6	| Open a test port using `netcat` | `nc -l 8888`	| Simulate a service listening on a port |
| 7	| Block and unblock that test port | Use `ufw deny 8888`, test with `nmap`, then `ufw delete deny 8888`	| Practice verifying and managing rules |
| 8	| View raw firewall rules (optional) | `sudo iptables -L`	| See the underlying system firewall configuration |

---

### 💡 Bonus Mini-Project:
**"Lockdown and Access Test":** Set up a local service (like Python HTTP server or netcat), scan it with nmap, then block it with UFW. Write a short log of the steps and what you observed.

---

## 📅 Week 6: Network Monitoring & Diagnostics
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

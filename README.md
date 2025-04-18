# Linux Networking
Basics in Linux and Networking

## 🧠 Linux Networking Challenge Roadmap (Weeks 1–6)

| **Week** | **Focus Area** | **Tools/Commands** | **Goals** | **Challenges** |
|----------|----------------|--------------------|-----------|----------------|
| 1 | Linux Networking Basics | `ip a`, `ip r`, `ping`, `hostname`, `whoami`, `/etc/hosts`, `/etc/resolv.conf` | Understand IP setup, DNS basics, hostname resolution | 🔹 Run `ip a` and explain your IP<br>🔹 Ping Google and your gateway<br>🔹 Edit `/etc/hosts` to add a fake domain |
| 2 | Connectivity & Routing | `traceroute`, `ss`, `netstat`, `ip route`, `curl`, `wget` | Understand routing, active connections, ports | 🔹 Trace route to Google<br>🔹 View open ports with `ss -tuln`<br>🔹 Get public IP with `curl ifconfig.me` |
| 3 | DNS & Name Resolution | `dig`, `nslookup`, `resolvectl` | Learn DNS lookup and troubleshooting | 🔹 Use `dig` to resolve a domain<br>🔹 Change DNS server temporarily<br>🔹 Break/fix DNS via `/etc/resolv.conf` |
| 4 | SSH & File Transfers | `ssh`, `scp`, `rsync`, `sshd`, `.ssh/config` | Remote access and secure file transfer | 🔹 Connect to another machine via SSH<br>🔹 Copy file with `scp`<br>🔹 Create an SSH alias in `.ssh/config` |
| 5 | Firewalls & Security | `ufw`, `iptables`, `fail2ban` *(optional)* | Configure basic firewall rules | 🔹 Enable `ufw` and allow SSH<br>🔹 Block non-essential ports<br>🔹 Test firewall rule functionality |
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

Use it as a quick reference for the rest of your networking journey!

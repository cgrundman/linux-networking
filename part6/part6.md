# 📅 Part 6: Network Monitoring & Diagnostics
**Goal:** Learn to inspect network traffic, monitor usage, and diagnose issues with real-time and historical tools.

---

## 🔧 Tools You’ll Use:
 - `iftop` or `nethogs`
 - `tcpdump`
 - `netstat` / `ss`
 - `ip`
 - `journalctl` / `dmesg`

---

## ✅ Tasks & Concepts
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

## 💡 Bonus Mini-Project:
**"What’s My Network Doing?":** 
1. Run iftop or nethogs while browsing and downloading files.
2. Capture packets using tcpdump during the activity.
3. Analyze the .pcap file or summarize the activity:
     - What IPs were contacted?
     - What ports were used?
     - What used the most bandwidth?
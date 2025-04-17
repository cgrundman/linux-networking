# linux-networking
Learning Linux and getting familarity with 


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

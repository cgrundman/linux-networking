# 📅 Part 2: Connectivity & Routing
**Goal:** Understand how your computer reaches other networks, what connections it’s making, and how to explore them.

---

## 🔧 Tools You'll Use:
- `traceroute`
- `ss / netstat`
- `ip route`
- `curl`
- `wget`

---

## ✅ Tasks & Challenges

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

## 💡 Bonus Mini-Project:
Create a markdown report:
- Summary of what each command does
- Output samples from your system (anonymized if needed)
- Questions you had or things you want to explore further
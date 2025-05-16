# 📅 Part 5: Firewalls & Security
**Goal:** Learn how to control incoming/outgoing traffic on your system, manage firewall rules, and understand basic network-level security.

---

## 🔧 Tools You’ll Use:
 - `ufw` (Uncomplicated Firewall)
 - `iptables` (optional, advanced)
 - `nmap` (for scanning open ports)
 - `netcat` (nc, for basic listening/connections)

---

## ✅ Tasks & Concepts
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

## 💡 Bonus Mini-Project:
**"Lockdown and Access Test":** Set up a local service (like Python HTTP server or netcat), scan it with nmap, then block it with UFW. Write a short log of the steps and what you observed.
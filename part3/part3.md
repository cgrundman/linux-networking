# 📅 Part 3: DNS & Name Resolution
**Goal:** Learn how your system looks up domain names, troubleshoot DNS issues, and manipulate DNS settings.

---

## 🔧 Tools You'll Use:
 - `dig`
 - `nslookup`
 - `resolvectl`
 - `/etc/resolv.conf`

---

## ✅ Tasks & Challenges

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

## 💡 Bonus Mini-Project:
Write a brief report explaining:
 - The differences between `dig`, `nslookup`, and `resolvectl`
 - How DNS resolution works on your system
 - Any troubleshooting steps you took and how they fixed the DNS issues
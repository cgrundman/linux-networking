# 📅 Part 4: SSH & File Transfers
**Goal:** Learn to connect to remote systems securely, transfer files, and streamline your workflow with SSH configuration.

---

## 🔧 Tools You'll Use:
 - `ssh`
 - `scp`
 - `rsync`
 - `sshd`
 - `~/.ssh/config`

---

## ✅ Tasks & Challenges
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

## 💡 Bonus Mini-Project:
Create a simple script to sync a folder of notes between two machines using `rsync` and your `.ssh/config` alias.
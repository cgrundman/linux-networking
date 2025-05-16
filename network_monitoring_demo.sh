#!/bin/bash

# Network Monitoring & Diagnostics Demo Script
# Safe-to-run overview of Week 6 tools

function pause() {
  read -p "Press enter to continue..."
}

echo "🔧 1. Checking active network interfaces and IPs (ip a)"
ip a
pause

echo "🔧 2. Displaying statistics for each network interface (ip -s link)"
ip -s link
pause

echo "🔧 3. Viewing open ports and listening services (ss -tuln)"
ss -tuln
pause

echo "🔧 4. Monitoring bandwidth usage by connection (iftop)"
echo "    ➤ You must press 'q' to quit iftop manually."
sudo iftop
pause

echo "🔧 5. Monitoring network usage by process (nethogs)"
echo "    ➤ You must press 'q' to quit nethogs manually."
sudo nethogs
pause

echo "🔧 6. Capturing packets briefly with tcpdump (sudo tcpdump -c 10 -i any)"
echo "    ➤ Showing 10 packets from any interface"
sudo tcpdump -c 10 -i any
pause

echo "🔧 7. Checking logs for possible network errors (dmesg | grep -i eth)"
dmesg | grep -i eth
pause

echo "🎯 Done! This script gave a hands-on overview of core network monitoring tools."
echo "Consider trying: sudo tcpdump -i <interface> -w file.pcap and open in Wireshark!"


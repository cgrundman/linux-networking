#!/bin/bash

# Script to monitor and capture network traffic on a specified interface

# Ask for the interface
read -p "Enter the network interface to monitor (e.g., eth0, wlan0): " IFACE

# Check if the interface exists
if ! ip link show "$IFACE" > /dev/null 2>&1; then
    echo "❌ Interface '$IFACE' not found."
    exit 1
fi

# Ask whether to show live bandwidth usage
read -p "Do you want to monitor live traffic before capture? (y/n): " MONITOR_CHOICE
if [[ "$MONITOR_CHOICE" =~ ^[Yy]$ ]]; then
    if command -v iftop &> /dev/null; then
        sudo iftop -i "$IFACE"
    elif command -v nethogs &> /dev/null; then
        sudo nethogs "$IFACE"
    else
        echo "⚠️ No live monitoring tool (iftop/nethogs) found. Skipping."
    fi
fi

# Set up capture filename
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
FILENAME="capture_${IFACE}_${TIMESTAMP}.pcap"

echo "🔍 Capturing packets on interface '$IFACE'. Press Ctrl+C to stop."
sudo tcpdump -i "$IFACE" -w "$FILENAME"

echo "✅ Capture saved to: $FILENAME"

#!/bin/bash

# Start Netcat listener on port 8888 and write to file
echo "[Listener] Listening on port 8888..."
nc -l 8888 > listener_output.txt
echo "[Listener] Connection closed. Received message:"
cat listener_output.txt

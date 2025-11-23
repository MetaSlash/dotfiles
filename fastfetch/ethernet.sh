#!/bin/bash
RED='\033[0;31m'   # Red ANSI color code
GREEN='\033[0;32m' # Green ANSI color code
YELLOW='\033[1;33m' # Yellow ANSI color code (corrected)
BLUE='\033[0;34m'  # Blue ANSI color code (corrected)
RESET='\033[0m'    # Reset color

# Define the Ethernet interface (replace 'eth0' with your actual interface name if different)
ETH_INTERFACE="enp0s31f6"

# Check if the Ethernet interface is up and has an IP address
if ip link show "$ETH_INTERFACE" | grep -q "state UP" && [[ -n $(ip addr show "$ETH_INTERFACE" | grep 'inet ') ]]; then
	echo -e "${GREEN}ON${RESET}"
else
	echo -e "${RED}OFF${RESET}"
fi


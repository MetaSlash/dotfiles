#!/bin/bash
RED='\033[0;31m'   # Red ANSI color code
GREEN='\033[0;32m' # Green ANSI color code
YELLOW='\033[1;33m' # Yellow ANSI color code (corrected)
BLUE='\033[0;34m'  # Blue ANSI color code (corrected)
RESET='\033[0m'    # Reset color

WIFI_INTERFACE="wlp61s0"

# Check if the Wi-Fi interface is up and has an IP address
if ip link show "$WIFI_INTERFACE" | grep -q "state UP" && [[ -n $(ip addr show "$WIFI_INTERFACE" | grep 'inet ') ]]; then
	# Get the IP address assigned to the Wi-Fi interface
	ip_address=$(ip addr show "$WIFI_INTERFACE" | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)

	# Get the SSID of the connected Wi-Fi network
	# network_name=$(iwgetid -r "$WIFI_INTERFACE")
	# wifi_name=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d':' -f2)

	echo -e "${GREEN}ON${RESET} - [SSID] - ${YELLOW}$ip_address${RESET}"
else
	echo -e "${RED}OFF${RESET}"
fi


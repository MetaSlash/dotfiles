#!/bin/bash

RED='\033[0;31m'   #'0;31' is Red's ANSI color code
GEEN='\033[0;32m'   #'0;32' is Green's ANSI color code
YELLOW='\033[1;32m'   #'1;32' is Yellow's ANSI color code
BLEU='\033[0;34m'   #'0;34' is Blue's ANSI color code
RESET='\033[0m'   #'0;34' is Blue's ANSI color code

# Get the number of SSH sessions
connected_users=$(who | grep 'pts' | wc -l)

# Check if SSH is running
sshd_status=$(systemctl is-active sshd)

# Display results
if [ "$sshd_status" == "active" ]; then
	echo -e "${GEEN}SSH ON${RESET} User(s) connected : $connected_users"
else
    echo -e "${RED}SSH OFF${RESET}"
fi


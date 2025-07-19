#!/bin/bash

# Define your variables
HOST="$(hostname)"
# Set the ENV Variable as the model of the PC
product_family=$(cat /sys/devices/virtual/dmi/id/product_family)

# Print in the desired format
echo "$HOST ($product_family)"


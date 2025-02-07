#!/bin/bash
# Configure static IP address on a network interface

INTERFACE="eth0"
IP_ADDRESS="192.168.1.100"
NETMASK="255.255.255.0"
GATEWAY="192.168.1.1"

# Bring the interface down
ifconfig $INTERFACE down

# Assign the static IP address
ifconfig $INTERFACE $IP_ADDRESS netmask $NETMASK up

# Set the default gateway
route add default gw $GATEWAY $INTERFACE

echo "Static IP configuration applied to $INTERFACE."

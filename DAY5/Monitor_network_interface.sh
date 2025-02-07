#!/bin/bash
# List active network interfaces and their IP addresses

echo "Active network interfaces and their IP addresses:"
for iface in $(ls /sys/class/net/); do
    IP=$(ip addr show $iface | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)
    if [ -n "$IP" ]; then
        echo "$iface: $IP"
    fi
done

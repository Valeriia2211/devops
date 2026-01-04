#!/bin/bash

echo "Hostname: $(hostname)"
echo "------------------------"

echo "IP addresses:"
ip address | grep inet | awk '{print $2, $NF}'
echo "------------------------"

echo "Kernel version: $(uname -r)"
echo "------------------------"

echo "Uptime:"
uptime
echo "------------------------"

echo "Current user: $(whoami)"
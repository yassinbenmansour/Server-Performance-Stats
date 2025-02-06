#!/bin/bash

#Mac_os

echo -e "\nTotal CPU Usage:"
top -l 1 | grep "CPU usage" | awk '{print "CPU Usage: " $3}'


echo -e "\nMemory Usage:"
top -l 1 | grep "PhysMem" | awk '{print "Memory Usage: " $2 " (Used), " $4 " (Free)"}'


echo -e "\nDisk Usage:"
df -h | grep -E '^/dev' | awk '{print "Disk Usage: " $3 " of " $2 " (" $5 " used)"}'


echo -e "\nTop 5 Processes by CPU Usage:"
ps -eo pid,%cpu,command | sort -rk 2| head -n 6


echo -e "\nTop 5 Processes by Memory Usage:"
ps -eo pid,%mem,command | sort -rk 2 | head -n 6


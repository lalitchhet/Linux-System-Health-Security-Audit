#!/bin/bash
# Date: 09/27/2026
# Author: Lalit Chhetri
# Description: Shows system info

hostname_info=$(hostname)
operating_info=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)
kernel_info=$(uname -r)
uptime_info=$(uptime -p)
cpu_info=$(lscpu | awk 'NR==8 {print $3, $4, $5, $6, $7, $8}')
memory_info=$(free -h | awk '/^Mem:/ {print $2 " total"}')
disk_info=$(df -h / | awk 'NR==2 {print $3 " used / " $2 " total / " $5}')
user_info=$(whoami)
date_info=$(date '+%Y-%m-%d %H:%M:%S')

echo "============================================================"
echo "          Linux System Information"
echo "============================================================"
echo
echo "Hostname: $hostname_info"
echo "Operating System: $operating_info"
echo "Kernel: $kernel_info"
echo "Uptime: $uptime_info"
echo "CPU: $cpu_info"
echo "Memory: $memory_info"
echo "Disk Usage: $disk_info"
echo "Current User: $user_info"
echo "Date/Time: $date_info"
echo
echo "============================================================"
echo "          Audit Complete"
echo "============================================================"

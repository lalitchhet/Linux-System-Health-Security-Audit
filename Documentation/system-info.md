# System Information Script

## Overview

`system_info.sh` is the first script in the Linux System Health & Security Audit project.

The purpose of this script is to collect basic information about a Linux system and present the results in a readable format.

## Information Collected

The script collects:

- Hostname
- Operating system
- Kernel version
- System uptime
- CPU information
- Memory information
- Disk usage
- Current user
- Date and time

## Bash Concepts Used

This script demonstrates:

- Bash shebang
- Variables
- Command substitution
- Pipes
- `grep`
- `awk`
- `cut`
- Linux system commands
- Formatted terminal output

## Commands Used

The script uses several Linux commands to collect system information, including:

```bash
hostname
cat /etc/os-release
uname
uptime
lscpu
free
df
whoami
date

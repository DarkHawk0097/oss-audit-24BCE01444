#!/bin/bash
# Script 1: System Identity Report
# Author: Arshit Samkria | Course: Open Source Software
# Purpose: dfisplays a welcome screen with system information

# --- Variables ---
STUDENT_NAME="Arshit Samkria"
SOFTWARE_CHOICE="LibreOffice"

# --- Gather system info using command substitution ---
KERNEL=$(uname -r)                          # Get kernel version
USER_NAME=$(whoami)                         # Get current logged-in user
UPTIME=$(uptime -p)                         # Get human-readable uptime
DISTRO=$(lsb_release -d | cut -f2)         # Get distro name
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S') # Get formatted date and time
HOME_DIR=$HOME                              # Get home directory path

# --- Display formatted output ---
echo "=================================================="
echo "     Open Source Audit — $STUDENT_NAME"
echo "=================================================="
echo ""
echo "  Software Under Audit : $SOFTWARE_CHOICE"
echo "  Linux Distribution   : $DISTRO"
echo "  Kernel Version       : $KERNEL"
echo "  Logged-in User       : $USER_NAME"
echo "  Home Directory       : $HOME_DIR"
echo "  System Uptime        : $UPTIME"
echo "  Current Date & Time  : $CURRENT_DATE"
echo ""
echo "  OS License           : GNU GPL v2 (Linux Kernel)"
echo "  LibreOffice License  : Mozilla Public License 2.0"
echo ""
echo "=================================================="
echo "  'Given enough eyeballs, all bugs are shallow'"
echo "  — Linus Torvalds"
echo "=================================================="

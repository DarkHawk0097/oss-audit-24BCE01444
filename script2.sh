#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Arshit Samkria | Course: Open Source Software
# Purpose: Checks if LibreOffice is installed and inspects its package details

# --- Define the package to inspect ---
PACKAGE="libreoffice"

# --- Check if package is installed using dpkg ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    echo ""
    echo "--- Package Details ---"
    # Extract version, license summary and description using dpkg and grep
    dpkg -s $PACKAGE | grep -E 'Version|Status|Maintainer|Homepage'
    echo ""
    echo "--- Installed Files (first 10) ---"
    dpkg -L $PACKAGE | head -10   # List files installed by this package
else
    echo "✘  $PACKAGE is NOT installed."
    echo "   Install it with: sudo apt install libreoffice"
fi

echo ""
echo "--- Open Source Philosophy Notes ---"

# --- Case statement: prints a philosophy note based on package name ---
case $PACKAGE in
    libreoffice)
        echo "LibreOffice was made by a community which decided to revolt against corporate control."
        echo "The Document Foundation forked OpenOffice when Oracle acquired Sun Microsystems."
        ;;
esac

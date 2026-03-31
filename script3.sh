#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Arshit Samkria | Course: Open Source Software
# Purpose: this script loops through key system directories and reports size + permissions

# --- Array of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/lib/libreoffice")

echo "============================================"
echo "        Directory Audit Report"
echo "============================================"
echo ""

# --- Loop through each directory using a for loop ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        # Get directory size, suppress permission errors with 2>/dev/null
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "  Directory : $DIR"
        echo "  Size      : $SIZE"
        echo "  Perms     : $PERMS"
        echo "  Owner     : $OWNER | Group: $GROUP"
        echo "  --------------------------------------------"
    else
        echo "  $DIR — does not exist on this system"
        echo "  --------------------------------------------"
    fi
done

echo ""
echo "--- LibreOffice Config Directory Check ---"

# --- Check if LibreOffice user config exists ---
LO_CONFIG="$HOME/.config/libreoffice"

if [ -d "$LO_CONFIG" ]; then
    echo "✔  LibreOffice config found at: $LO_CONFIG"
    PERMS=$(ls -ld "$LO_CONFIG" | awk '{print $1}')
    OWNER=$(ls -ld "$LO_CONFIG" | awk '{print $3}')
    echo "   Permissions : $PERMS"
    echo "   Owner       : $OWNER"
else
    echo "libreoffice config not found. Open libreoffice once to generate it."
fi

#!/bin/bash
# Script 4: Log File Analyzer
# Author: Arshit Samkria | Course: Open Source Software
# Purpose: reading a log file line by line and count keyword occurrences
# Usage: bash script4.sh /var/log/dpkg.log libreoffice

# --- Accept log file path and keyword as command-line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword is 'error' if none provided
COUNT=0                  # initialize counter variable

# --- Validate that the file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    echo "Usage: bash script4.sh <logfile> <keyword>"
    exit 1
fi

echo "============================================"
echo "  Log File Analyzer"
echo "============================================"
echo "  File    : $LOGFILE"
echo "  Keyword : $KEYWORD"
echo "--------------------------------------------"

# --- Read log file line by line using while-read loop ---
while IFS= read -r LINE; do
    # Check each line for the keyword (case-insensitive with -i flag)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter if keyword found
    fi
done < "$LOGFILE"

echo ""
echo "  Result: '$KEYWORD' found $COUNT times."
echo ""

# --- Print the last 5 matching lines for context ---
echo "--- Last 5 Matching Lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "============================================"

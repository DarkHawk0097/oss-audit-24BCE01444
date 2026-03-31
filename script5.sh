#!/bin/bash
# script 5: Open Source Manifesto Generator
# author: Arshit Samkria | Course: Open Source Software
# purpose: generate a personalised open source philosophy statement

# --- alias concept demonstrated (as comment — aliases don't persist in scripts) ---
# in a live shell you could run: alias generate='bash ~/script5.sh'
# tgis shows how aliases make commands more convenient — same idea as open source shortcuts

echo "============================================"
echo "   Open Source Manifesto Generator"
echo "============================================"
echo ""
echo "answer three questions to generate your manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. name one open-source tool you use every day: " TOOL
read -p "2. in one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. name one thing you would build and share freely: " BUILD

# --- Get current date and username for file naming ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "generating your manifesto..."
echo ""

# --- Compose the manifesto paragraph using string concatenation ---
# clear the file first if it exists, then write with >>
echo "" > "$OUTPUT"

echo "============================================" >> "$OUTPUT"
echo "   MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "   Generated on: $DATE" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Build the manifesto paragraph by concatenating variables into text ---
echo "Every day, I rely on $TOOL — a tool built not by a corporation," >> "$OUTPUT"
echo "but by people who believed that $FREEDOM matters more than profit." >> "$OUTPUT"
echo "They wrote code, shared it openly, and asked for nothing in return." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in that same principle. One day, I will build $BUILD" >> "$OUTPUT"
echo "and release it freely — because the best ideas grow when they are shared," >> "$OUTPUT"
echo "not locked behind a paywall or a proprietary license." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Open source is not just a development model. It is a worldview." >> "$OUTPUT"
echo "It says: knowledge belongs to everyone. Tools should empower, not restrict." >> "$OUTPUT"
echo "And the work we do today becomes the foundation others build on tomorrow." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my commitment to the open source philosophy." >> "$OUTPUT"
echo "                              — $(whoami), $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"

# --- Display the manifesto on screen ---
cat "$OUTPUT"
echo ""
echo "manifesto saved: $OUTPUT"

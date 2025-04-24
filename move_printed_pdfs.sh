#!/bin/bash

SOURCE_DIR="/var/spool/cups-pdf/ANONYMOUS"
DEST_DIR="/home/shafi/PDF"
LOG_FILE="/home/shafi/print_copy_log.txt"

echo "Checking for new PDF files to move..."

# Make sure destination exists
mkdir -p "$DEST_DIR"

# Loop through PDF files in source
for file in "$SOURCE_DIR"/*.pdf; do
  if [ -f "$file" ]; then
    echo "Moving $file to $DEST_DIR"
    mv "$file" "$DEST_DIR"
    echo "$(date): Moved $(basename "$file")" >> "$LOG_FILE"
  fi
done

echo "Done."

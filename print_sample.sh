#!/bin/bash

FILE=${1:-testfile.txt}

if [ ! -f "$FILE" ]; then
  echo "File not found!"
  exit 1
fi

echo "Printing $FILE..."
lp "$FILE"

#!/bin/bash

FILE=${1}

# If no argument passed, prompt the user
if [ -z "$FILE" ]; then
  echo -n "Enter the full path or name of the file to print: "
  read FILE
fi

# Check if the file exists
if [ ! -f "$FILE" ]; then
  echo "File '$FILE' not found!"
  exit 1
fi

# List available printers
echo "Available Printers:"
lpstat -p | awk '{print $2}' | nl

# Store printer list in an array
mapfile -t printers < <(lpstat -p | awk '{print $2}')

# Prompt user to select printer by number
echo -n "Enter the number of the printer you want to use: "
read printer_index

# Validate selection
if [[ ! "$printer_index" =~ ^[0-9]+$ ]] || [ "$printer_index" -lt 1 ] || [ "$printer_index" -gt "${#printers[@]}" ]; then
  echo "Invalid selection. Exiting."
  exit 1
fi

# Get selected printer name
selected_printer="${printers[$((printer_index - 1))]}"
echo "You selected: $selected_printer"

# Print the file
echo "Sending $FILE to $selected_printer..."
lp -d "$selected_printer" "$FILE"

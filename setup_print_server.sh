#!/bin/bash

echo "Installing CUPS and cups-pdf..."
sudo apt update
sudo apt install -y cups cups-pdf

echo "Enabling and Starting CUPS..."
sudo systemctl enable cups
sudo systemctl start cups

echo "Allowing remote administration..."
sudo cupsctl --remote-admin --remote-any --share-printers
sudo ufw allow 631/tcp

echo "Setting CUPS to listen on all interfaces..."
sudo sed -i 's/Listen localhost:631/port 631/' /etc/cups/cupsd.conf
sudo sed -i 's/Browsing Off/Browsing On/' /etc/cups/cupsd.conf

echo "Restart CUPS..."
sudo systemctl restart cups

echo "Print Server setup is complete!"

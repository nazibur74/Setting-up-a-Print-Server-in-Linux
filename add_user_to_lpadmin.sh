#!/bin/bash

USER=${1:-$USER}

echo "Adding user $USER to lpadmin group..."
sudo usermod -aG lpadmin $USER
echo "User added. You might need to re-login for the changes to apply."

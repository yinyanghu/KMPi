#!/bin/bash

#Stop the background process
sudo hciconfig hci0 down
sudo systemctl daemon-reload
sudo service bluetooth start

# Update MAC address
./updateMac.sh

#Update Name
./updateName.sh KMPi

sudo server/server.py

#!/bin/bash

apt install bluez bluez-tools -y
apt install bluez-firmware python-bluez python-dev python-pip -y
pip install evdev
apt install git python3-dbus python3-pyudev python3-evdev -y
apt install python-dbus -y

cp dbus/org.kmpi.BluetoothKM.conf /etc/dbus-1/system.d
cp /lib/systemd/system/bluetooth.service bluetooth.service.backup
cp bluetooth.service /lib/systemd/system/bluetooth.service
systemctl daemon-reload
service bluetooth start

echo "Done!"
#!/bin/bash

if [ -f "bluetooth.service.bk" ] ; then
    cp bluetooth.service.bk /lib/systemd/system/bluetooth.service
    systemctl daemon-reload
    service bluetooth start
fi
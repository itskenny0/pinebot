#!/bin/bash
upSeconds="$(cat /proc/uptime | grep -o '^[0-9]\+')"

while [ $(cat /proc/uptime | grep -o '^[0-9]\+') -lt 86400 ] ; do
        echo "Feeding dog ..."
        echo >/dev/watchdog
        sleep 10
done

echo "Dog is too old, putting to sleep ..."
/sbin/reboot


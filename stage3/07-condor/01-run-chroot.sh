#!/bin/bash -e

if [ -f $CONTINUE ]; then
  set +e
fi

# Set default startup services state
systemctl enable pigpiod.service

echo "DefaultTimeoutStopSec=10s" | tee -a /etc/systemd/user.conf
echo "DefaultTimeoutAbortSec=10s" | tee -a /etc/systemd/user.conf

sed -i '/./,/^$/!d' /boot/config.txt
sed -i 's/^dtoverlay=pi3-disable-bt.*//' /boot/config.txt
sed -i 's/^# Bluetooth.*//' /boot/config.txt
sed -i '/./,/^$/!d' /boot/config.txt
sh -c "echo '' >> /boot/config.txt"
sh -c "echo '# Bluetooth' >> /boot/config.txt"
sh -c "echo 'dtoverlay=pi3-disable-bt' >> /boot/config.txt"
systemctl disable hciuart >/dev/null 2>&1
systemctl enable bluetooth >/dev/null 2>&1
systemctl enable ofono >/dev/null 2>&1
sed -i 's/^ENABLE_BLUETOOTH=.*/ENABLE_BLUETOOTH=1/' /boot/crankshaft/crankshaft_env.sh
sed -i 's/^EXTERNAL_BLUETOOTH=.*/EXTERNAL_BLUETOOTH=1/' /boot/crankshaft/crankshaft_env.sh

exit 0

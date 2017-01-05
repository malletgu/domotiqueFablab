#! /bin/sh

git clone git@github.com:romor/enocean-mqtt.git
cd enocean-mqtt
sudo python3 setup.py develop

# On renomme la clé usb en "enocean"
echo 'SUBSYSTEM=="tty", ATTRS{product}=="EnOcean USB 300 DB", SYMLINK+="enocean"' >> /etc/udev/rules.d/99-usb.rules


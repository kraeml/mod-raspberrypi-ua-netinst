#! /bin/bash

set eux

for i in 00 01 02 03 04 05
# for i in matrix
do
    # Workaround for atom-terminal
    export PATH=$(echo $PATH | sed s/::/:/)
    sed -i 's/^#usbroot=1/usbroot=1/' ./overlay/config/installer-config.txt
    rm *cluster-${i}.zip || true
    ./mod-ua.sh --name cluster-${i}
    cp ../raspberrypi-ua-netinst/*-${i}.zip ./
    sed -i 's/^usbroot=1/#usbroot=1/' ./overlay/config/installer-config.txt
done

#! /bin/bash

for i in 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 99 matrix
# for i in matrix
do
    # Workaround for atom-terminal
    export PATH=$(echo $PATH | sed s/::/:/)
    rm *pi3-${i}.zip || true
    ./mod-ua.sh --name pi3-${i}
    cp ../raspberrypi-ua-netinst/*-${i}.zip ./
done

#!/bin/bash
#
curl -L "http://downloads.raspberrypi.org/raspbian_latest" -o image.zip
IMAGE=$(unzip -Z -1 image.zip)
echo IMAGE

diskutil list
echo "Please enter the disk to send info to: (for example /dev/sda2)"
read DISK
read -p "Ok, we're continuing using $DISK, press ctrl-c to exit now... or [Enter] to continue"

#diskutil umountDisk $DISK

echo "Starting to write image '$IMAGE' to '$DISK', press ctrl-t to get status, this could take a while..."
#sudo dd bs=1m if=$IMAGE of=$DISK
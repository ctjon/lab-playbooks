#!/bin/bash

#sudo mount /mnt/Backup

SRCDIR=/var/lib/libvirt/images
USBDIR=/mnt/Backup/kvm-vms

echo "syncing kvm-vms to $USBDIR"
sudo rsync -e ssh -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--delete-before \
--delete \
--exclude=.* \
--exclude=test-*.x86_64.qcow2 \
--exclude=satclient*.x86_64.qcow2 \
--exclude=satellite6.x86_64.qcow2 \
--delete-excluded \
$SRCDIR/ $USBDIR

#sudo umount /mnt/Backup

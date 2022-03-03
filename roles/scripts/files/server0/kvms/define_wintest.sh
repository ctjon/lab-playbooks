#!/bin/bash

sudo virt-install --name WinTest \
--description 'WinTest' \
--ram 4096 \
--vcpus 4 \
--disk path=/var/lib/libvirt/images/WinTest.qcow2,device=disk,bus=virtio,size=48 \
--pxe \
--disk path=/usr/share/virtio-win/virtio-win.iso,device=cdrom \
--os-type windows \
--os-variant win10 \
--graphics vnc \
--network bridge:br0,model=e1000

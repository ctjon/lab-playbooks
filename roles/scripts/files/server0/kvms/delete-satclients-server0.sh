#!/bin/bash
set -x
# Delete satclient0
sudo virsh destroy satclient0
sudo virsh undefine satclient0
sudo rm -f /var/lib/libvirt/images/satclient0.x86_64.qcow2

# Delete satclient1
sudo virsh destroy satclient1
sudo virsh undefine satclient1
sudo rm -f /var/lib/libvirt/images/satclient1.x86_64.qcow2

# Delete satclient2
sudo virsh destroy satclient2
sudo virsh undefine satclient2
sudo rm -f /var/lib/libvirt/images/satclient2.x86_64.qcow2

# Delete satclient3
sudo virsh destroy satclient3
sudo virsh undefine satclient3
sudo rm -f /var/lib/libvirt/images/satclient3.x86_64.qcow2


#!/bin/bash
set -x
# Delete test-centos6
sudo virsh destroy test-centos6
sudo virsh undefine test-centos6
sudo rm -f /var/lib/libvirt/images/test-centos6.x86_64.qcow2

# Delete test-centos7
sudo virsh destroy test-centos7
sudo virsh undefine test-centos7
sudo rm -f /var/lib/libvirt/images/test-centos7.x86_64.qcow2

# Delete test-fedora29
sudo virsh destroy test-fedora29
sudo virsh undefine test-fedora29
sudo rm -f /var/lib/libvirt/images/test-fedora29.x86_64.qcow2

# Delete test-fedora30
sudo virsh destroy test-fedora30
sudo virsh undefine test-fedora30
sudo rm -f /var/lib/libvirt/images/test-fedora30.x86_64.qcow2

# Delete test-rhel5
sudo virsh destroy test-rhel5
sudo virsh undefine test-rhel5
sudo rm -f /var/lib/libvirt/images/test-rhel5.x86_64.qcow2

# Delete test-rhel6
sudo virsh destroy test-rhel6
sudo virsh undefine test-rhel6
sudo rm -f /var/lib/libvirt/images/test-rhel6.x86_64.qcow2

# Delete test-rhel7
sudo virsh destroy test-rhel7
sudo virsh undefine test-rhel7
sudo rm -f /var/lib/libvirt/images/test-rhel7.x86_64.qcow2

# Delete test-rhel8
sudo virsh destroy test-rhel8
sudo virsh undefine test-rhel8
sudo rm -f /var/lib/libvirt/images/test-rhel8.x86_64.qcow2

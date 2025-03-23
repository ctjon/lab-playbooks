export LIBVIRT_DEFAULT_URI=qemu:///system
sudo virt-install --name synchost7 \
--description 'RHEL7-Synchost' \
--ram 2048 \
--vcpus 2 \
--disk path=~/VirtualMachines/synchost7.qcow2 \
--os-type linux \
--os-variant rhel7.9 \
--graphics vnc \
--boot hd,network,menu=on \
--network bridge=br0,model=virtio \
--import 

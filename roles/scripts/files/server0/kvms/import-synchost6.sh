export LIBVIRT_DEFAULT_URI=qemu:///system
sudo virt-install --name synchost6 \
--description 'RHEL6-Synchost' \
--ram 1024 \
--vcpus 2 \
--disk path=~/VirtualMachines/synchost6.qcow2 \
--os-type linux \
--os-variant rhel6.10 \
--graphics vnc \
--boot hd,network,menu=on \
--network bridge=br0,model=virtio \
--import 

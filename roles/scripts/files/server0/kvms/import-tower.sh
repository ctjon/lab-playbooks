export LIBVIRT_DEFAULT_URI=qemu:///system
sudo virt-install --name Tower \
--description 'Tower' \
--ram 4096 \
--vcpus 4 \
--disk path=/var/lib/libvirt/images/Tower.qcow2 \
--os-type linux \
--os-variant rhel8.3 \
--graphics vnc \
--boot hd,network,menu=on \
--network bridge=br0,model=virtio \
--import 

export LIBVIRT_DEFAULT_URI=qemu:///system
sudo virt-install --name iTunesServer \
--description 'iTunesServer' \
--ram 4096 \
--vcpus 4 \
--disk path=/home/chris/VirtualMachines/iTunesServer.qcow2 \
--disk path=/dev/sda1 \
--os-type windows \
--os-variant win10 \
--graphics vnc \
--sound ich9 \
--boot hd,network,menu=on \
--network bridge=br0,model=virtio \
--import


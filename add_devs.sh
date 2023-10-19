lvmdevices --adddev /dev/md0
lvmdevices --adddev /dev/md1
vgchange -a y datavg --devices=/dev/md0
vgchange -a y backupvg --devices=/dev/md1

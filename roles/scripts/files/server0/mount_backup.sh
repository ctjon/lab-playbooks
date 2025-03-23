#!/bin/bash
lsblk
sudo cryptsetup luksOpen /dev/sdg1 Backup
sudo mkdir /mnt/Backup && mount /dev/mapper/Backup /mnt/Backup

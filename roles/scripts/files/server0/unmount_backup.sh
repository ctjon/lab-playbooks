#!/bin/bash
sudo umount /mnt/Backup
sudo cryptsetup luksClose /dev/mapper/Backup

#!/bin/bash

SRCDIR=/export/archive
DESTDIR=/mnt/Backup/archive

rsync -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--exclude=.* \
--delete-excluded \
$SRCDIR/ $DESTDIR

#!/bin/bash

SRCDIR=/mnt/Backup/archive
DESTDIR=/export/archive

#rsync -e ssh -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
rsync -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--exclude=.* \
--delete-excluded \
$SRCDIR/ $DESTDIR

#chown -R chris:chris $DESTDIR
#restorecon -RFv $DESTDIR


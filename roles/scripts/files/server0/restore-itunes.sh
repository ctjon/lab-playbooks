#!/bin/bash

SRCDIR=/mnt/iTunesBkup
DESTDIR=/export/iTunes

#rsync -e ssh -aHKv --no-o --no-g --keep-dirlinks --progress --delete \

rsync -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--exclude=.* \
--delete-excluded \
$SRCDIR/ $DESTDIR

chown chris:chris $DESTDIR
restorecon -RFv $DESTDIR


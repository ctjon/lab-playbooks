#!/bin/bash

SRCDIR=/run/media/chris/Backup/chris
DESTDIR=server0:/home/chris

#rsync -e ssh -aHKv --no-o --no-g --keep-dirlinks --progress --delete \

rsync -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--exclude=.* \
--delete-excluded \
$SRCDIR/ $DESTDIR

ssh server0 "sudo chown -R chris:chris $DESTDIR"
ssh server0 "sudo restorecon -RFv $DESTDIR"

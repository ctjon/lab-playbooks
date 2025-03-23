ITUNESDIR=/export/iTunes/iTunes/
BACKUPDIR=/mnt/iTunesBkup/iTunes

sudo mount /mnt/iTunesBkup

echo "syncing iTunes Library to $BACKUPDIR"
rsync -e ssh -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--exclude=.* \
--delete-excluded \
$ITUNESDIR/ $BACKUPDIR

IOSDIR=/export/iTunes/iOS-Backups/
IOSBKUPDIR=/mnt/iTunesBkup/iOS-Backups

echo "syncing iOS Backups to $IOSBKUPDIR"
rsync -e ssh -aHKv --no-o --no-g --keep-dirlinks --progress --delete \
--exclude=.* \
--delete-excluded \
"$IOSDIR" $IOSBKUPDIR

sudo umount /mnt/iTunesBkup

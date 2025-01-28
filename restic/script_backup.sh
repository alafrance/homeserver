#!/bin/bash

source /home/alexis/Documents/.env

export B2_ACCOUNT_ID
export B2_ACCOUNT_KEY
export RESTIC_PASSWORD


sudo -E restic -r $RESTIC_REPOSITORY backup $ROOT_URL --exclude-file $EXCLUDES_FILE

sudo -E restic -r $RESTIC_REPOSITORY forget --keep-daily 7 --keep-weekly 4 --keep-monthly 6 --prune
sudo -E restic -r $RESTIC_REPOSITORY check


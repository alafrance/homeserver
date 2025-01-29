#!/bin/bash

source /home/alexis/Documents/.env


export B2_ACCOUNT_ID
export B2_ACCOUNT_KEY
export RESTIC_PASSWORD

sudo -E restic -r $RESTIC_REPOSITORY stats
# sudo -E restic -r $RESTIC_REPOSITORY ls 4678a22f /mnt/md127/media/

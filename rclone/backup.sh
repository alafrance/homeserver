#!/bin/bash

source /home/alexis/homeserver/.env

export PYTHONUNBUFFERED=1
export RCLONE_UNBUFFERED_OUTPUT=1

echo "==================== $(date) ====================" >> $LOG_FILE

echo "🔄 Démarrage du backup..." >> $LOG_FILE
    
rclone --log-level INFO  \
                --progress \
                --exclude-from $EXCLUDES_FILE \
                sync $MOUNT_URL $B2_REPOSITORY

echo "✔ Backup terminé avec succès !" >> $LOG_FILE



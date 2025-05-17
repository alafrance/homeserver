#!/bin/bash

source /home/alexis/homeserver/.env


echo "==================== $(date) ====================" >> $LOG_FILE

echo "🔄 Démarrage du restore..." >> $LOG_FILE

rclone --log-level INFO \
        --log-file $LOG_FILE \
        copy $B2_REPOSITORY $MOUNT_URL/restore_dir

echo "✔ Restore terminé avec succès !" >> $LOG_FILE

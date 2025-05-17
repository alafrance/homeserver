#!/bin/bash

# Définir le point de montage
MOUNT_POINT="/mnt/disk3"
UUID="4c1b5f44-4641-4395-850e-2d04b05b5ea0"
LOG_FILE=/home/alexis/homeserver/check_mount.log
DEVICE=$(blkid -U "$UUID")
# Vérifier si le disque est monté
if ! grep -qs $MOUNT_POINT /proc/mounts; then
    echo "$(date) : $DEVICE n'est pas monté, tentative de remontage..." >> $LOG_FILE
    sudo mount "$DEVICE" "$MOUNT_POINT"
    
    # Vérifier si le montage a réussi
    if grep -qs $MOUNT_POINT /proc/mounts; then
        echo "$(date) : $DEVICE monté avec succès." >> $LOG_FILE
    else
        echo "$(date) : Échec du montage de $DEVICE." >> $LOG_FILE
    fi
else
    echo $(mountpoint -q "$MOUNT_POINT");
    echo $MOUNT_POINT
    echo "$(date) : $DEVICE est déjà monté." >> $LOG_FILE
fi

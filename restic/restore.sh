#!/bin/bash

source /home/alexis/Documents/.env

export B2_ACCOUNT_ID
export B2_ACCOUNT_KEY
export RESTIC_PASSWORD


sudo -E restic -r $RESTIC_REPOSITORY restore  --verbose latest --target ${ROOT_URL}/b2

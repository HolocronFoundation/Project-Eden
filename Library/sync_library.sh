#!/bin/bash

# This script uses rsync to sync Project Gutenberg.
# You should consider running this regularly using crontab or another program.

# Vars
local_storage_dir="/home/Media/Books/Project Gutenberg"

rsync -av -L -K --del --progress --stats ftp.ibiblio.org::gutenberg "$local_storage_dir"
rsync -av -L -K --del --progress --stats ftp@ftp.ibiblio.org::gutenberg-epub "/media/troper/Troper_Server-B/Gutenberg Temp"
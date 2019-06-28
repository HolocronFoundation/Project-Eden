#!/bin/bash

# This script uses rsync to sync Project Gutenberg.
# You should consider running this regularly using crontab or another program.

# Vars
local_storage_dir="/home/Media/Books/Project Gutenberg"

rsync -av -L -K --del --progress --stats ftp.ibiblio.org::gutenberg "$local_storage_dir"
rsync -av -L -K --del --progress --stats --prune-empty-dirs --include "*/"  --include="*.rdf" --exclude="*" ftp@ftp.ibiblio.org::gutenberg-epub "$local_storage_dir/rdf"
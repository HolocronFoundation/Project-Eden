#!/bin/bash

# This script uses rsync to sync Project Gutenberg.
# You should consider running this regularly using crontab or another program.

# Vars
local_storage_dir="/media/troper/Troper_Primary-D/Media/Wiki"

rsync -av -L --progress --stats --delete-after \
      --include=en*/ --include=wikidatawiki/ \
        --include=en*/latest/ --include=wikidatawiki/latest/ \
          --include=*-latest-pages-articles-multistream.xml.bz2 \
          --include=*-latest-pages-articles-multistream-index.txt.bz2 \
      --exclude=* \
      rsync://ftpmirror.your.org/pub/wikimedia/dumps/ \
      "$local_storage_dir"
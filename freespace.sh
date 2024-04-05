#!/bin/bash

sudo apt-get autoremove

sleep 3

sudo apt-get clean


sleep 3
sudo journalctl --vacuum-time=3d


sleep 3

sudo rm -rf ~/.cache/thumbnails/*


sleep 3

# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        sudo snap remove "$snapname" --revision="$revision"
        
    done
  
  echo "done"

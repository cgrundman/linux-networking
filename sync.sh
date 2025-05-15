#!/bin/bash

# Define the source and destination
SOURCE_DIR="$HOME/GitHub/linux-networking"
DESTINATION="myserver:~/backup/"

# Use rsync to sync the files
rsync -avz --delete "$SOURCE_DIR" "$DESTINATION"

echo "Sync complete!"

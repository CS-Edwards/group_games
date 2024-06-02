#!/bin/bash

# Check if kaggle.json exists
if [ ! -f "kaggle.json" ]; then
    echo -e "\033[91mWarning: kaggle.json not found. Please upload kaggle.json file and try again.\033[0m"
    exit 1
fi

# Create directory and move kaggle.json
mkdir -p ~/.kaggle
mv kaggle.json ~/.kaggle/
mv /.kaggle /root/
chmod 600 ~/.kaggle/kaggle.json
echo "Completed: Moved kaggle.json to ~/.kaggle/"

# Download dataset
kaggle datasets download -d medaxone/boardgamegeek-top100
echo "Completed: Downloaded dataset"

# Unzip dataset
unzip -q boardgamegeek-top100.zip
echo "Completed: Unzipped dataset"

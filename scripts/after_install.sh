#!/bin/bash
set -e

echo "[after_install] Running after_install.sh script"
echo "[after_install] Current directory: $(pwd)"
echo "[after_install] Listing files in current directory:"
ls -al

if [ -d "html" ]; then
  echo "[after_install] html directory found. Copying files..."
  cp -r html/* /var/www/html/
else
  echo "[after_install] html directory NOT found!"
  exit 1
fi


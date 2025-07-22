#!/bin/bash
echo "[after_install] Running after_install.sh script"

APP_DIR=$(dirname "$(readlink -f "$0")")/..

echo "[after_install] App directory resolved to $APP_DIR"

if [ -d "$APP_DIR/html" ]; then
    echo "Copying new HTML to Apache directory..."
    cp -r "$APP_DIR/html/"* /var/www/html/
else
    echo "[after_install] html directory NOT found!"
    exit 1
fi

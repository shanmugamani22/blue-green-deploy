#!/bin/bash
set -e

echo "Copying new HTML to Apache directory..."
sudo cp -r html/* /var/www/html/

echo "Restarting Apache2..."
sudo systemctl restart apache2

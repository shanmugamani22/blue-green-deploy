#!/bin/bash
set -e

echo "Installing Apache2..."
sudo apt-get update
sudo apt-get install -y apache2

echo "Cleaning existing HTML..."
sudo rm -rf /var/www/html/*

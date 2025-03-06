#!/bin/bash
set -e

# Update package lists
echo "Updating package lists..."
apt-get update

# Install Chromium for web development
echo "Installing Chromium browser..."
apt-get install -y chromium-browser

# Make sure Flutter can find Chromium
echo "Setting CHROME_EXECUTABLE environment variable..."
export CHROME_EXECUTABLE=$(which chromium-browser)
echo "export CHROME_EXECUTABLE=$(which chromium-browser)" >>/root/.bashrc

# Configure Flutter for web development
echo "Enabling Flutter web..."
flutter config --enable-web

# Update SDK path for Android emulator
echo "Configuring Android SDK..."
mkdir -p /opt/android-sdk-linux/tools/bin

# Verify setup
echo "Flutter configuration:"
flutter doctor -v

echo "Setup complete!"

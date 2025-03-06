#!/bin/bash
set -e

echo "===== Setting up Flutter development environment ====="

# Update package lists
echo "Updating package lists..."
apt-get update

# Install Google Chrome
echo "Installing Google Chrome..."
apt-get install -y wget gnupg
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >/etc/apt/sources.list.d/google-chrome.list
apt-get update
apt-get install -y google-chrome-stable

# Configure Chrome for Flutter
export CHROME_EXECUTABLE=$(which google-chrome-stable)
echo "export CHROME_EXECUTABLE=$(which google-chrome-stable)" >>/root/.bashrc

# Install packages needed for Android emulator
echo "Installing Android emulator dependencies..."
apt-get install -y \
    libgl1 \
    libpulse0 \
    libx11-6 \
    libxcb1 \
    libxdamage1 \
    qemu-kvm

# SDK locations
export ANDROID_SDK_ROOT=/opt/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

# Accept Android SDK licenses
echo "Accepting Android SDK licenses..."
yes | sdkmanager --licenses || true

# Install system image for emulator (SDK 35)
echo "Installing Android SDK 35 system image for emulator..."
sdkmanager "system-images;android-35;google_apis;x86_64" || echo "SDK 35 not available, trying SDK 34..."
sdkmanager "system-images;android-34;google_apis;x86_64" || echo "Failed to install system image"

# Create a basic emulator
echo "Creating Android emulator..."
avdmanager create avd \
    --name flutter_emulator \
    --package "system-images;android-35;google_apis;x86_64" \
    --device "pixel" ||
    avdmanager create avd \
        --name flutter_emulator \
        --package "system-images;android-34;google_apis;x86_64" \
        --device "pixel" || echo "Failed to create emulator"

echo "===== Enabling Flutter web ====="
flutter config --enable-web

cd flutter_app && flutter pub get

# List emulators and verify setup
echo "===== Listing available emulators ====="
flutter emulators

echo "===== Flutter doctor ====="
flutter doctor -v

echo "===== Setup complete! ====="

flutter run -d chrome --wasm

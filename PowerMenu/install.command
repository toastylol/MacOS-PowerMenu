#!/bin/bash

cd "$(dirname "$0")"

APP_NAME="PowerMenu.app"
DEST_DIR="/Applications"
APP_PATH="$DEST_DIR/$APP_NAME"

echo "Installing $APP_NAME..."

if [ ! -d "$APP_NAME" ]; then
    echo "Error: $APP_NAME not found in the current directory."
    exit 1
fi

echo "Moving to $DEST_DIR..."
cp -R "$APP_NAME" "$DEST_DIR/"

echo "Removing Apple quarantine flags..."
xattr -cr "$APP_PATH"

SHORTCUT_FILE="PowerMenu.shortcut"

echo ""
echo "===================================================="
echo "✅ App Installed Successfully!"
echo "===================================================="
echo "Next step: Adding the Shortcut workflow."
echo "Press ENTER to import the Shortcut..."
read -r

open "$SHORTCUT_FILE"

echo ""
echo "Final Instructions:"
echo "1. Click 'Add Shortcut' in the window that just appeared."
echo "2. Double-click the new shortcut to open its settings."
echo "3. Click the 'Shortcut Details' icon (the sliders on the right)."
echo "4. Click 'Add Keyboard Shortcut' and press your desired keys."

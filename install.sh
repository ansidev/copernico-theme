#!/bin/bash

ROOT_UID=0
DEST_DIR=
THEME_DIR=Copernico

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/themes"
else
  DEST_DIR="$HOME/.themes"
fi

if [ -d "$DEST_DIR/$THEME_DIR" ]; then
  rm -rf "$DEST_DIR/$THEME_DIR"
fi

mkdir -p "$DEST_DIR/$THEME_DIR"
cp -r gnome-shell/ $DEST_DIR/$THEME_DIR/

echo "Installed..."


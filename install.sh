#!/bin/bash

# Backup GTK config folders if they exist
for dir in gtk-3.0 gtk-4.0; do
    if [ -d "$HOME/.config/$dir" ]; then
        mv "$HOME/.config/$dir" "$HOME/.config/$dir.bak"
        echo "Backed up $HOME/.config/$dir to $HOME/.config/$dir.bak"
    fi
done

# Copy new GTK configuration files
cp -r gtk-3.0 gtk-4.0 "$HOME/.config/"

# Set window controls to the left
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

echo "Installation complete. Please log out and log back in to apply changes."

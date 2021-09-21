# macos-titlebar

This is CSS stylesheet to apply MacOS style buttons over current GTK theme without changing it. 

### Pre-requisites

To have window minimize and move buttons to the left install [pantheon-tweaks](https://github.com/pantheon-tweaks/pantheon-tweaks). Choose Windows layout *macOS* and toggle *Force to use dark stylesheet*.

### Install theme

```bash
mv ~/.config/gtk-3.0 ~/.config/gtk-3.0.bkp
mkdir ~/.config/gtk-3.0
git clone https://github.com/AI-ien/macos-titlebar /tmp/macos-titlebar
cp -r /tmp/macos-titlebar/* ~/.config/gtk-3.0
```

### Applying theme to flatpak apps

Use [pakitheme](https://github.com/refi64/pakitheme) bash script to install current theme as flatpak. I recommend installing for both `user` and `system`. 

```bash
sudo apt install ostree
sudo apt install appstream-util
git clone https://github.com/refi64/pakitheme
cd pakitheme
chmod 775 pakitheme
./pakitheme install-system
./pakitheme install-user
```

And run this command:

```bash
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro
```

There still might be some apps that will ignore it, but majority will work fine.

Logout or reboot to apply changes.

### To uninstall

```bash
rm -r ~/.config/gtk-3.0
mv ~/.config/gtk-3.0.bkp ~/.config/gtk-3.0
```


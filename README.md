# macos-titlebar

GTK3 CSS stylesheet that apply MacOS style buttons over current GTK theme without changing it. Tested with `elementary OS` but should work with any GTK3 desktop.

![Screenshot from 2021-09-21 23-58-10](https://user-images.githubusercontent.com/33252703/134327539-3c11e6c9-8742-4c36-975c-ab67ccb4b481.png)

![Screenshot from 2021-09-21 23-57-49](https://user-images.githubusercontent.com/33252703/134327558-488f40d6-d762-4816-ad91-0d809a2e10bb.png)


### Pre-requisites
To have window minimize button and move buttons to the left install:
* elementary OS Odin 6 [pantheon-tweaks](https://github.com/pantheon-tweaks/pantheon-tweaks). Choose Windows layout **macOS** and toggle **Force to use dark stylesheet**.
* elementary OS Hera 5 and before [elementary-tweaks](https://github.com/elementary-tweaks/elementary-tweaks)
* for Gnome desktop [gnome-tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks) or `sudo apt install gnome-tweaks`

## Install theme

```bash
mv ~/.config/gtk-3.0 ~/.config/gtk-3.0.bkp    # make backup
mkdir ~/.config/gtk-3.0
git clone https://github.com/AI-ien/macos-titlebar /tmp/macos-titlebar
cp -r /tmp/macos-titlebar/* ~/.config/gtk-3.0
```

## Install theme for flatpak apps

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

And run this command to override `xdg-config`:

```bash
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro
```

There still might be some apps that will ignore it, but majority will work fine.

Logout or reboot to apply changes.

### Side note regarding flatpak theming
If you have a custom theme then you will also have to copy it to runtime folder of that particular app. To have consistent themes accross all apps this has to be done for each runtime, for example, QT, elementary, Gnome 3.38, Gnome 40, KDE etc.

To find all installed flatpaks:

`flatpak list`

To find runtime used by app:

`flatpak info <full app name>`

Example of flatpak themes folder location:

`/var/lib/flatpak/runtime/io.elementary.Platform/x86_64/6/active/files/share/themes`

## To uninstall

```bash
rm -r ~/.config/gtk-3.0
mv ~/.config/gtk-3.0.bkp ~/.config/gtk-3.0
```

To remove flatpak themes:
```bash
flatpak uninstall <full theme name>
```

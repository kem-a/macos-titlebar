# macos-titlebar

GTK3 CSS stylesheet that apply MacOS style buttons over current GTK theme without changing it. Tested with `elementary OS` but should work with any GTK3 desktop.

**Night**

![Screenshot from 2021-11-04 17-29-06](https://user-images.githubusercontent.com/33252703/140376423-eb1c0f8a-de50-45eb-bd75-101bf5013b2d.png)


**Day**


![Screenshot from 2021-11-04 17-29-21](https://user-images.githubusercontent.com/33252703/140376484-09f15c2c-98e6-4368-a1ef-d44f3cfb8ab3.png)


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

Run this command to override `xdg-config` and have buttons themed for flatpak apps:

```bash
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro
```

To have elementary theme for flatpak apps you have to install current theme as flatpak. To do that use [pakitheme](https://github.com/refi64/pakitheme) bash script.

```bash
sudo apt install ostree
sudo apt install appstream-util
git clone https://github.com/refi64/pakitheme
cd pakitheme
chmod 775 pakitheme
./pakitheme install-system
./pakitheme install-user
```

There still might be some apps that will ignore it, but majority will work fine.

Logout or reboot to apply changes.

## To uninstall

```bash
rm -r ~/.config/gtk-3.0
mv ~/.config/gtk-3.0.bkp ~/.config/gtk-3.0
```

To remove flatpak themes:
```bash
flatpak uninstall <full theme name>
```

### Side note regarding flatpak theming
If you have a custom theme then you will also have to copy it to runtime folder of that particular app. To have consistent themes accross all apps this has to be done for each runtime, for example, QT, elementary, Gnome 3.38, Gnome 40, KDE etc.

To find all installed flatpaks:

`flatpak list`

To find runtime used by the app:

`flatpak info <full app name>`

Example of flatpak themes folder location:

`/var/lib/flatpak/runtime/io.elementary.Platform/x86_64/6/active/files/share/themes`

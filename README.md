# macos-titlebar

GTK3 CSS stylesheet that apply MacOS style buttons over current GTK theme without changing it. Tested with `elementary OS` but should work with any GTK3 desktop.

**Night**

![Screenshot from 2021-11-04 17-29-06](https://user-images.githubusercontent.com/33252703/140376423-eb1c0f8a-de50-45eb-bd75-101bf5013b2d.png)


**Day**


![Screenshot from 2021-11-04 17-29-21](https://user-images.githubusercontent.com/33252703/140376484-09f15c2c-98e6-4368-a1ef-d44f3cfb8ab3.png)


### Pre-requisites
To have window minimize button and move buttons to the left install:
* elementary OS Odin 6 [pantheon-tweaks](https://github.com/pantheon-tweaks/pantheon-tweaks). Choose Windows layout **macOS**. Toggle **Force to use dark stylesheet** if using dark theme.
* elementary OS Hera 5 and before [elementary-tweaks](https://github.com/elementary-tweaks/elementary-tweaks)
* for Gnome desktop [gnome-tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks) or `sudo apt install gnome-tweaks`

## Install theme

Make backup of `~/.config/gtk-3.0` folder, then unzip theme file and copy folder content to `~/.config/gtk-3.0`.

## Flatpak theming

Run this command to override `xdg-config` and have buttons themed for flatpak apps:

```bash
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro
```

To have entire elementary theme for flatpak apps you have to install current theme as flatpak app. To do that use [pakitheme](https://github.com/refi64/pakitheme) bash script.

There still might be some apps that will ignore it, but majority will work fine. Logout or reboot to apply changes.

## To uninstall

To remove flatpak themes:
```bash
flatpak uninstall <full theme name>
```
Delete `~/.config/gtk-3.0` folder, restore backup.

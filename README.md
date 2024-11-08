# macos-titlebar

GTK3 and GTK4 CSS stylesheet that apply MacOS style buttons over current GTK theme without changing it. Tested with `elementary OS` but should work with any Gnome desktop.

**Night**

![Screenshot from 2021-11-04 17-29-06](https://user-images.githubusercontent.com/33252703/140376423-eb1c0f8a-de50-45eb-bd75-101bf5013b2d.png)


**Day**


![Screenshot from 2021-11-04 17-29-21](https://user-images.githubusercontent.com/33252703/140376484-09f15c2c-98e6-4368-a1ef-d44f3cfb8ab3.png)


## Install

```sh
sh install.sh
```

## Customizing Button Styles

To customize the button styles, you can modify the `gtk.css` files located at:

- GTK3: `~/.config/gtk-3.0/gtk.css`
- GTK4: `~/.config/gtk-4.0/gtk.css`

## Flatpak theming

Run this command to override `xdg-config` and have buttons themed for flatpak apps:

```sh
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro
flatpak override --user --filesystem=xdg-config/gtk-4.0:ro
```

To have entire elementary theme for flatpak apps you have to install current theme as flatpak app. To do that use [stylepak](https://github.com/refi64/stylepak) bash script.

There still might be some apps that will ignore it, but majority will work fine. Logout or reboot to apply changes.

## To uninstall

```sh
sh uninstall.sh
```

To remove flatpak themes:
```bash
flatpak uninstall <full theme name>
```

## License

This project is licensed under the MIT License

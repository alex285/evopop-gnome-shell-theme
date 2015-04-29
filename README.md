## Gnome Shell theme for Evopop

Gnome Shell to match Evopop GTK and icons themes

* https://github.com/solus-project/evopop-icon-theme
* https://github.com/solus-project/evopop-gtk-theme

This is work in progress, with known and uknown unfinished things and bugs! Also pretty messy!

---
### Installation
It supports GNOME 3.16, it inherits elements from Adwaita, and can be used only with user-themes extension. 

#### Node modules

```
npm install -g stylus gulp coffee-script
```

#### Dependencies
```
cd evopop-gnome-shell-theme
npm install
```

---
### Build

```
gulp all
```
It will build theme and install it under ~/.themes

```
gulp
```
It will build the theme under dist

```
gulp nocompress
```
Same as above, but with an uncompressed CSS

---
### Distribution

You can get binaries from

https://github.com/alex285/evopop-shell-dist


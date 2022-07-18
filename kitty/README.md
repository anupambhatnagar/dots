## Kitty

### Installing Kitty

```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```


### Create a softlink for kitty config file.

```
ln -s ~/github/dots/kitty/kitty.conf ~/.config/kitty/kitty.conf
```

## Hammerspoon

Hammerspoon is used to create a system wide hotkey for kitty.


### Installing Hammerspoon
Download the latest release of Hammerspoon and drag it to your /Applications folder

```
https://github.com/Hammerspoon/hammerspoon/releases/
```

### Create a softlink for hammerspoon.

```
ln -s ~/github/dots/kitty/init.lua ~/.hammerspoon/init.lua
```

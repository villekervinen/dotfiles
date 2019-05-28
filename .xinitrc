#!/bin/bash

export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

xrdb $HOME/.Xresources
xsetroot -solid "#1d2330"
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# gnome keyring (https://wiki.archlinux.org/index.php/GNOME/Keyring#xinitrc_method)
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec i3


#!/bin/bash

# TODO: Requires st (separate repo), i3, sddm, and maybe gtk-3
# Font: Adobe's SourceCodePro

if [ $(id -u) -ne 0 ] ; then
    echo "Requires root."
    exit 1
fi

echo "The commands in this script should probably be run by hand until this is tested more"
exit 0

# Setup screen orientation
echo "xrandr --output DVI-D-0 --left-of HDMI-0" >> /usr/share/sddm/scripts/Xsetup

# gtk-3 dark mode
echo "[Settings]\ngtk-application-prefer-dark-theme = true" >> ~/.config/gtk-3.0/settings.ini

# Terminal config
cp sources/termite.config ~/.config/termite/config

# i3 config
cp sources/i3config ~/.config/i3/config

# i3status
cp sources/i3status.conf /etc/i3status.conf

# Numlock on in sddm
sed --in-place 's/Numlock=none/Numlock=on/g' /usr/lib/sddm/sddm.conf.d/default.conf

# Editor and browser defaults
echo "EDITOR=/usr/bin/vim \nBROWSER=/usr/bin/brave" >> /etc/environment

# Let numpad/delete work in st
echo "set enable-keypad on" >> /etc/inputrc

#!/bin/bash

# TODO: Requires st (separate repo), i3, sddm, and maybe gtk-3
# Font: Adobe's SourceCodePro
# st needs these to display emojis:
# ttf-linux-libertine ttf-inconsolata ttf-twemoji-color ttf-symbola

if [ $(id -u) -ne 0 ] ; then
    echo "Requires root."
    exit 1
fi

echo "The commands in this script should probably be run by hand until this is tested more"
exit 0

# Setup screen orientation
echo "xrandr --output DVI-D-0 --left-of HDMI-0" >> /usr/share/sddm/scripts/Xsetup

# all .config and home dir stuff
cp -r sources/.* ~/home/

# i3status
# TODO laptop option
cp sources/i3status.conf /etc/i3status.conf

# Numlock on in sddm
sed --in-place 's/Numlock=none/Numlock=on/g' /usr/lib/sddm/sddm.conf.d/default.conf

# Let numpad/delete work in st
echo "set enable-keypad on" >> /etc/inputrc

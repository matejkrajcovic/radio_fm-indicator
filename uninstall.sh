#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "You have to be root to uninstall." 1>&2
   exit 1
fi

AUTOSTART_INSTALL_PATH=$XDG_CONFIG_DIRS
if [ -z "$AUTOSTART_INSTALL_PATH" ]
then
    AUTOSTART_INSTALL_PATH=/etc/xdg/autostart/
fi

SCRIPT_INSTALL_PATH=/usr/local/bin
ICON_INSTALL_PATH=/usr/share/icons/gnome/48x48/apps

rm $SCRIPT_INSTALL_PATH/radiofm-indicator.py
echo "Python script removed from $SCRIPT_INSTALL_PATH"

rm $ICON_INSTALL_PATH/radio.png
echo "Icon removed from $ICON_INSTALL_PATH"

rm $AUTOSTART_INSTALL_PATH/radiofm-indicator.desktop
echo "Indicator unset to autostart during desktop enviroment startup."

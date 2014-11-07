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

chmod +x radiofm-indicator.py

cp radiofm-indicator.py $SCRIPT_INSTALL_PATH
echo "Python script copied to $SCRIPT_INSTALL_PATH"

cp radio.png $ICON_INSTALL_PATH
echo "Icon copied to $ICON_INSTALL_PATH"

cp radiofm-indicator.desktop $AUTOSTART_INSTALL_PATH
echo "Indicator set to autostart during desktop enviroment startup."

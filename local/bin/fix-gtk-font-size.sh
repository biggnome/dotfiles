#!/bin/bash
# Sets GTK fonts from 8- to 11-point to correct for monitor resolution and updates Xsettings
sed -i -e 's/,  8/,  12/g' /home/sandy/.config/gtk-*.0/settings.ini && xsettingsd &

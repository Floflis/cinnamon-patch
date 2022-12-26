#!/bin/bash

if [ "$(cinnamon --version)" = "Cinnamon $(cat currentversion.txt)" ];
then
   echo "Patching Cinnamon..."
   sudo cp -f js/ui/panel.js /usr/share/cinnamon/js/ui/
   sudo cp -f files/usr/share/cinnamon/cinnamon-settings/cinnamon-settings.py /usr/share/cinnamon/cinnamon-settings/
else
   echo "Cannot patch Cinnamon as the version is different than expected by the patcher"
fi

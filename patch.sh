#!/bin/bash

if [ "$(cinnamon --version)" = "Cinnamon $(cat currentversion.txt)" ];
then
   echo "Patching Cinnamon..."
   if [ ! -e /usr/share/cinnamon/js/ui/custom ]; then sudo mkdir /usr/share/cinnamon/js/ui/custom; fi
   if [ ! -e /usr/share/cinnamon/js/ui/custom/panel ]; then sudo mkdir /usr/share/cinnamon/js/ui/custom/panel; fi
   if [ ! -e /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu ]; then sudo mkdir /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu; fi
   sudo cp -f js/ui/custom/panel/PanelContextMenu/a.js /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu/
   sudo cp -f js/ui/custom/panel/PanelContextMenu/b.js /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu/
   sudo cp -f js/ui/panel.js /usr/share/cinnamon/js/ui/
#-
   if [ ! -e /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu/systemmonitor ]; then sudo mkdir /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu/systemmonitor; fi
   sudo cp -f js/ui/custom/panel/PanelContextMenu/systemmonitor/a.js /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu/systemmonitor/
   sudo cp -f js/ui/custom/panel/PanelContextMenu/systemmonitor/b.js /usr/share/cinnamon/js/ui/custom/panel/PanelContextMenu/systemmonitor/
#   sudo cp -f files/usr/share/cinnamon/cinnamon-settings/cinnamon-settings.py /usr/share/cinnamon/cinnamon-settings/
#   sudo cp -f files/usr/share/cinnamon/cinnamon-settings-users/cinnamon-settings-users.py /usr/share/cinnamon/cinnamon-settings-users/
else
   echo "Cannot patch Cinnamon as the version is different than expected by the patcher"
   echo "Expected/supported version: Cinnamon $(cat currentversion.txt)"
   echo "Your current version: $(cinnamon --version)"
   echo "Don't worry, this issue is probably from our side. If you already have an up-to-date Cinnamon version, our patcher will soon keep up with the current."
   #task: should guess if current version is lower or greater
fi

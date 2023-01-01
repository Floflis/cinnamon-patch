#!/bin/bash

if [ "$(cinnamon --version)" = "Cinnamon $(cat currentversion.txt)" ];
then
   echo "Patching Cinnamon..."
   sudo cp -f js/ui/panel.js /usr/share/cinnamon/js/ui/
#   sudo cp -f files/usr/share/cinnamon/cinnamon-settings/cinnamon-settings.py /usr/share/cinnamon/cinnamon-settings/
#   sudo cp -f files/usr/share/cinnamon/cinnamon-settings-users/cinnamon-settings-users.py /usr/share/cinnamon/cinnamon-settings-users/
else
   echo "Cannot patch Cinnamon as the version is different than expected by the patcher"
   echo "Expected/supported version: Cinnamon $(cat currentversion.txt)"
   echo "Your current version: $(cinnamon --version)"
   echo "Don't worry, this issue is probably from our side. If you have an up-to-date Cinnamon version, our patcher will soon keep up with the current."
fi

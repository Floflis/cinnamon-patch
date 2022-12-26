#!/bin/bash

if [ "$(cinnamon --version)" = "Cinnamon $(cat currentversion.txt)" ]; then
   echo "Can install"
fi

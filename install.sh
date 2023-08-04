#!/bin/bash

dir=~/.mozilla/firefox/
if [ -d "$dir" ] ; then
   mv chrome/ user.js "$dir/?*.default-release"
   echo -e "Firefox cloned to the directories:\n$(ls -a | grep 'default-release')"
   echo -e "\nIf you want to remove the config from any of the above folders,\nrun the remove.sh that has been created in each folder"
fi
unset dir

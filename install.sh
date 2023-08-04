#!/bin/bash

dir=~/.mozilla/firefox/
if [ -d "$dir" ] ; then
   mv chrome/ user.js "$dir/?*.default-release"
   echo -e "Firefox cloned to the directories:\n$(ls -a | grep 'default-release')"
fi
unset dir

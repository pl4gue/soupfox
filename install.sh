#!/bin/bash

firefoxDir=~/.mozilla/firefox/
scriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -d "$firefoxDir" ] ; then
   cp -r $scriptDir/chrome/ $scriptDir/user.js $firefoxDir?*.default-release
   echo -e "Firefox cloned to the directories:\n$(ls -a $firefoxDir | grep 'default-release')"
fi
unset scriptDir
unset firefoxDir

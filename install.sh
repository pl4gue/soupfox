#!/bin/bash

firefoxDir=~/.mozilla/firefox/
scriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -d "$firefoxDir" ] ; then
   for dir in $(ls $firefoxDir | grep default);
	do
	   cp -r $scriptDir/soupfox-files/* $firefoxDir$dir
	done
   echo -e "Firefox cloned to the directories:\n$(ls -a $firefoxDir | grep 'default')"
fi

unset scriptDir
unset firefoxDir

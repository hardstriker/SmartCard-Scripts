#!/bin/sh

curUser=$(ls -l /dev/console | cut -d " " -f 4)

defaults write /Users/$curUser/Library/Preferences/com.apple.screensaver tokenRemovalAction -int 1

chown $curUser:staff /Users/$curUser/Library/Preferences/com.apple.screensaver.plist

Exit 0

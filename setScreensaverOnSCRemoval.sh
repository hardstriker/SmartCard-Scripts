#!/bin/sh

######
# Created by Matt Woodruff, Sr Systems Engineer @ Jamf
# January 23, 2018
######
#
######
# INSTRUCTIONS
# Setup a new Jamf Pro Policy with the following settings
#
# Trigger: Login (verify Login hooks are enabled within the Settings -> Management Framework -> Checkin -> Login/Logout Hooks
# Frequency: Ongoing
# Make available Offline
#
# Used in Mac OS X 10.12 and higher
######

curUser=$(ls -l /dev/console | cut -d " " -f 4)

defaults write /Users/$curUser/Library/Preferences/com.apple.screensaver tokenRemovalAction -int 1

chown $curUser:staff /Users/$curUser/Library/Preferences/com.apple.screensaver.plist

Exit 0

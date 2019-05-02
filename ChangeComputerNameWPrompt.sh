#!/bin/bash

#Prompt the user to enter a computer name
computerName=$(osascript -e 'text returned of (display dialog "Please enter the computer name:" default answer "" buttons {"OK"} default button 1)')

# Set Hostname using variable created above
scutil --set HostName $computerName
scutil --set LocalHostName $computerName
scutil --set ComputerName $computerName

# Report inventory back to Jamf Pro
jamf recon

exit
#!/bin/sh

#
# It's stupid that I need to do this.
#

### Quit Microsoft Teams.
echo "Killing Teams"
osascript -e 'tell application "Microsoft Teams" to quit'
read -t 3 -p "Waiting for locked files to free up"

## Blow away the credentials.
echo "clearing cache"
rm -rf ~/Library/Application\ Support/Microsoft/Teams

### Done
echo "Restart Team and go attend that super important meeting"

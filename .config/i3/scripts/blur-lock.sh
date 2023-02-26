#!/usr/bin/env bash

PICTURE=/tmp/i3lock.png
LOCK_ICON=~/.config/i3/i3_lock_64x.png # 64x or 512x
SCREENSHOT="scrot $PICTURE"
BLUR_SETTINGS="20x5"

# Collect the screenshot
$SCREENSHOT

# Add a blur effect to a smaller image for performance
convert $PICTURE -scale 25% -blur $BLUR_SETTINGS -scale 400% $PICTURE

# Add the lock icon onto the screenshot
convert $PICTURE $LOCK_ICON -gravity center -composite -matte $PICTURE

i3lock -i $PICTURE
rm $PICTURE

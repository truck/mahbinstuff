#!/bin/zsh
# now uses a list I have made of available fonts that work well

PICK=`cat ~/bin/shellfonts.list |dmenu -i -l 25 -fn "ProggySquareTTSZ" -p "ST: Pick Font"`
SIZE=`echo 16,12,14,10,9,8,72 | sed s/,/\\\n/g | dmenu -p Size -fn mOsOul-16 -sb orange -sf navy`
if [[ $PICK ]]; then
 FONT=$PICK:pixelsize="$SIZE":antialias=false:autohint=false
 echo st -f $FONT
 st -f $FONT
fi


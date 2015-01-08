#!/bin/bash
# this may not work any longer with the way that arch has
# redone the fc-list bit, if that's the case and you feel
# like fixing it, fix it...

PICK=`fc-list | sort |dmenu -i -l 25 -fn mOsOul -p Font`
if [ "$PICK" ]; then
 FONT=`echo $PICK | cut -d: -f2`
 echo st -f \"$FONT:pixelsize=16:antialias=false:autohint=false\"
 st -f "$FONT:pixelsize=16:antialias=false:autohint=false"
fi


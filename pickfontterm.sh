#!/bin/bash
# this may not work any longer with the way that arch has
# redone the fc-list bit, if that's the case and you feel
# like fixing it, fix it...

PICK=`fc-list | dmenu -i -l 25 -fn mOsOul -p Font`
if [ "$PICK" ]; then 
 FONT=`echo $PICK | sed -e "/^.*/s/^/xft:/"| sed -e "s/\:sty.*//"`
 COLORS=('dodgerblue' 'chartreuse' 'aliceblue' 'forestgreen' 'burlywood' 'dark goldenrod' 'indian red' 'firebrick' 'Gainsboro' 'Misty Rose' 'Peach Puff' 'Seashell' 'Slate Gray' 'Tan' 'Tomato')
 DACOLN=$(( $RANDOM % ${#COLORS} ))
 FADECOLN=$(( $RANDOM % ${#COLORS} ))
 DACOL=${COLORS[$DACOLN]}
 FADECOLOR=${COLORS[$FADECOLN]}
 DAFADE=$(( $RANDOM % 25 ))
 DAFADE=$(( $DAFADE + 25 ))
#echo $DACOL : $DAFADE
# amigaterm2.sh fontsize tintcolor fadepercent fadecolor cursorcolor extrashit
#echo ----
#echo urxvt -bc -rv -tr -sb +sr -g 80x42 -tint $TINTCOLOR -fade $DAFADE -fadecolor $FADECOLOR -tn xterm-256color -cr green -fn $FONT
#echo ----
 urxvt -bc -rv -tr -sb +sr -g 80x42 -tint "$DACOL" -fade "$DAFADE" -fadecolor "$FADECOLOR" -tn xterm-256color -cr green -fn "$FONT"
fi





#!/bin/bash
# help shit
if [[ $1 == '-h' ]]; then
    echo Help: $0 fontsize tintcolor fadepercent fadecolor cursorcolor extrashit
else

if [[ $1 == '-1' ]]; then
  SIZE=''
else
  SIZE=$1
fi

#TP="xft:TopazPlus a600a1200a4000-$SIZE"
    TP="xft:TopazPlus a600a1200a4000-$SIZE:antialias=false"
    PN="xft:P0T\-NOoDLE-$SIZE"
    MS="xft:mOsOul-$SIZE"
    MK="xft:Microknight-$SIZE"
    TINTCOLOR=$2
    FADEPERCENT=$3
    FADECOLOR=$4
    CURSORCOLOR=$5
# get rid of these arguments so we can do the rest at the end
    shift 5
echo    urxvtc -fn "$TP" -fi "$PN" -fb "$MS" -fbi "$MK" \
	-tint "$TINTCOLOR" -fade "$FADEPERCENT" \
        -fadecolor "$FADECOLOR" -cr "$CURSORCOLOR" \
	-rv -tr -sb -sr -g 80x24 -tn "xterm-256color" $@

    urxvtc -fn "$TP" -fi "$PN" -fb "$MS" -fbi "$MK" \
	-tint "$TINTCOLOR" -fade "$FADEPERCENT" \
        -fadecolor "$FADECOLOR" -cr "$CURSORCOLOR" \
	-rv -tr -sb -sr -g 80x24 -tn "xterm-256color" $@

    if [[ $? != 0 ]]; then
	    urxvtd -f -o
	    urxvtc -fn "$TP" -fi "$PN" -fb "$MS" -fbi "$MK" \
		-tint "$TINTCOLOR" -fade "$FADEPERCENT" \
		-fadecolor "$FADECOLOR" -cr "$CURSORCOLOR" \
		-rv -tr -sb -sr -g 80x24 -tn "xterm-256color" $@
    fi
fi

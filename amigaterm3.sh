#!/bin/zsh
# help shit
if [[ $1 == '-h' ]]; then
    echo Help: $0 fontsize tintcolor fadepercent fadecolor cursorcolor extrashit
else
#TP="xft:TopazPlus a600a1200a4000-$1"
    TP="xft:TopazPlus a600a1200a4000-$1:antialias=false"
    PN="xft:P0T\-NOoDLE-$1"
    MS="xft:mOsOul-$1"
    MK="xft:Microknight-$1"
    TINTCOLOR=$2
    FADEPERCENT=$3
    FADECOLOR=$4
    CURSORCOLOR=$5
# get rid of these arguments so we can do the rest at the end
    shift 5
echo    urxvtc -fn "$TP" -fi "$PN" -fb "$MS" -fbi "$MK" \
	-tint "$TINTCOLOR" -fade "$FADEPERCENT" \
        -fadecolor "$FADECOLOR" -cr "$CURSORCOLOR" \
	-rv -tr -sb -sr -g 80x24 +is -tn "xterm-256color" $@

    urxvtc -fn "$TP" -fi "$PN" -fb "$MS" -fbi "$MK" \
	-tint "$TINTCOLOR" -fade "$FADEPERCENT" \
        -fadecolor "$FADECOLOR" -cr "$CURSORCOLOR" \
	-rv -tr -sb -sr -g 80x24 +is -tn "xterm-256color" $@

    if [[ $? != 0 ]]; then
	    urxvtd -f -o
	    urxvtc -fn "$TP" -fi "$PN" -fb "$MS" -fbi "$MK" \
		-tint "$TINTCOLOR" -fade "$FADEPERCENT" \
		-fadecolor "$FADECOLOR" -cr "$CURSORCOLOR" \
		-rv -tr -sb -sr -g 80x24 +is -tn "xterm-256color" $@
    fi
fi

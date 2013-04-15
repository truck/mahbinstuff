#!/bin/sh
COLORS=("dodgerblue" "chartreuse" "aliceblue" "forestgreen" "burlywood" "dark goldenrod" "indian red" "firebrick" "Gainsboro" "Misty Rose" "Peach Puff" "Seashell" "Slate Gray" "Tan" "Tomato")
DACOLN=$(( $RANDOM % ${#COLORS} ))
DACOL=${COLORS[$DACOLN]}

DAFADE=$(( 25 + ($RANDOM % 25 ) ))

DAFADEN=$(( $RANDOM % ${#COLORS} ))
DAFCOL=${COLORS[$DAFADEN]}

DASHP=$(( $RANDOM % 25 ))
DASHP=$(( $DASHP + 10 ))

#DAFADE=$(( $DAFADE + 50 ))
#Help: /home/andrew/bin//amigaterm2.sh fontsize tintcolor fadepercent fadecolor cursorcolor extrashit
amigaterm2.sh -1 "$DACOL" "$DAFADE" "$DAFCOL" green -sh "$DASHP" "$@"

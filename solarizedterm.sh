#!/bin/zsh
xrdb ~/xresources/solorized_xresources

urxvtc -fn "xft:TopazPlus a600a1200a4000 for Powerline-12:antialias=false" \
-fi "xft:P0T\-NOoDLE" -fb "xft:mOsOul" -fbi "xft:Microknight" \
+is -cr "#cb4b16"

if [[ $? != 0 ]]; then
	urxvtd -f -o -q
	urxvtc -fn "xft:TopazPlus a600a1200a4000 for Powerline-12:antialias=false" \
	-fi "xft:P0T\-NOoDLE" -fb "xft:mOsOul" -fbi "xft:Microknight" \
	+is -cr "#cb4b16"
fi

xrdb ~/xresources/standard_xresources

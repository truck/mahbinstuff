#!/bin/zsh

font=`fc-list | cut -d: -f2 | sort | uniq | shuf | dmenu -i -l 10`
size=`echo what size|dmenu`
/usr/local/bin/st -f "$font-$size" $@

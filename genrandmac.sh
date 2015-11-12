#!/bin/zsh
# oddball mac won't work - it's multicast (:
# 5ca1ab1e
printf '5C:A1:AB:1E:%02X:%02X\n' $((RANDOM%256)) $((RANDOM%256))


#!/bin/sh

W="$(xdotool getactivewindow)"
S1="$(xprop -id "$W" | awk -F '"' '/WM_CLASS/{print $4}')"
if [ "$S1" != "Firefox" ] && [ "$S1" != "Firefox Developer Edition" ]; then
	xdotool key --clearmodifiers --window "$W" "ctrl+q"
fi

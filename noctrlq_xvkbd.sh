#!/bin/sh

W="$(xdotool getactivewindow)"
S1="$(xprop -id "$W" | awk -F '"' '/WM_CLASS/{print tolower($4)}')"
if [ "$S1" != "firefox" ] && [ "$S1" != "firefox-developer-edition" ]; then
	xvkbd -xsendevent -text "\Cq"
fi

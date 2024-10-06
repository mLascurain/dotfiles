#!/bin/sh

# Power menu script using rofi
CHOSEN=$(printf "Lock\nReboot\nShutdown\nLog Out" | rofi -dmenu -i)

case "$CHOSEN" in
	"Lock") i3lock ;;
	"Reboot") reboot ;;
	"Shutdown") poweroff ;;
	"Log Out")  i3-msg exit ;;
	*) exit 1 ;;
esac

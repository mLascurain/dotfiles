if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" != "HDMI-0" ]; then
      MONITOR=$m polybar --reload toph &
    fi
  done
else
  polybar --reload toph &
fi

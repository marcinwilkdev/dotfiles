if [ "$USER" = "mwilk" ]; then
  xrandr --output DP2-8 --primary --auto --output DP2-1 --auto --right-of DP2-8
fi
xbindkeys &
dwmblocks &
exec dwm

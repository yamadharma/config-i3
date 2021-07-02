#!/bin/bash
# ~/.config/i3/polybar/launch.sh

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using config location ~/.config/i3/polybar/config
polybar --config=~/.config/i3/polybar/config.ini i3 &

echo "Polybar launched..."

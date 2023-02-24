duration=$1
back=$2

# turn on graphical interface access
export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)

/opt/pomodoric/notify-send.sh/notify-send.sh \
    "Have a $duration min break" \
    "See you at $back" \
    -u critical \
    -a Pomodoric \
    -i /opt/pomodoric/icon.svg \
    -t $(($duration * 60 * 1000)) -f

# Minimize all windows
xdotool key super+d

duration=$1
back=$2

# turn on graphical interface access
export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)

./notify-send.sh/notify-send.sh \
    "Let's rock" \
    "You have $duration min, until $back" \
    -u critical \
    -a Pomodoric \
    -i /opt/pomodoric/icon.svg \
    -t $(($duration * 60 * 1000)) -f

# Minimize all windows
xdotool key super+d

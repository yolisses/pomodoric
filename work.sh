duration=25
back=$1

# turn on graphical interface access
export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)

./notify-send.sh/notify-send.sh \
    "Let's rock" \
    "You have until $back" \
    -u critical \
    -a Pomodoric \
    -i /opt/pomodoric/icon.svg \
    -t $(($duration * 60 * 1000)) -f

# Minimize all windows
xdotool key super+d

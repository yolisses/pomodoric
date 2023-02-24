# turn on graphical interface access
export DISPLAY=:0

duration=$1
notify-send "Have a $duration min break!" "#1 pomodoro 15:00" -i /opt/pomodoric/icon.svg -a Pomodoric -u critical; 

# Minimize all windows
xdotool key super+d;

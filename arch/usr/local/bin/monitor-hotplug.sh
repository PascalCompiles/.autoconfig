#!/bin/sh
#
# This script applies some of my monitor preferences and is referenced in:
#
# When monitor is plugged in
# /etc/udev/rules.d/70-monitor-hotplug.rules 
#
# When X initializes
# ~/.xinitrc
#
# When the lid closes
# /etc/apci/handler.sh
#
# The custom rules file above is able to detect if there's been a change.
#
# This script will detect upon the change if the monitor is connected or disconnected and apply my preferences.
#
# The following command can provide hardware events:
#
# sudo udevadm monitor 
#
# To detect if a monitor is connected look up:
#
# /sys/class/drm/<card>/<card-connectiontype>/status

sleep 0.2

export DISPLAY=:0
export XAUTHORITY=/home/$USER/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

#The hard coded status path for my HMDI-A-1 monitor
status_path=$(head -n 1 /sys/class/drm/card0/card0-HDMI-A-1/status)

if [ $status_path == 'connected' ]; then
  # Disable internal monitor
  xrandr --output eDP1 --off
  # If I want to use both monitors
  # xrandr --output eDP1 --primary --mode 1440x900 --output HDMI1 --mode 1920x1080 --right-of eDP1 
  # Enable external HDMI1 screen.
  xrandr --output HDMI1 --auto
  #xrandr --output HDMI1 --mode 1920x1080
else
  # Disconnected from external monitor(s).
  xrandr --output eDP1 --primary --auto 
fi

# re-apply feh background with new monitor sizes.
$HOME/.fehbg

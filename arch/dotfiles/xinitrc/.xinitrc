#!/bin/sh


xrdb -merge $HOME/.Xresources

# Source xinitrc.d
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Begin ssh-agent session 
eval $(ssh-agent) &

# Get Background
#$HOME/.fehbg &

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# Execute i3
exec /usr/bin/i3

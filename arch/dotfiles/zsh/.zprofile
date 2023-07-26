if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  eval $(keychain --eval --agents ssh --quick --quiet)
  exec startx
fi

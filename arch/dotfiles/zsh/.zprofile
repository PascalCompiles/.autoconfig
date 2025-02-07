if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  eval $(keychain --eval --agents ssh --quick --quiet)
  exec startx
fi

# Created by `pipx` on 2024-10-27 06:38:23
export PATH="$PATH:/home/pascal/.local/bin"

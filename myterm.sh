#!/bin/sh

for term in "$term_list" gnome-terminal xfce4-terminal urxvt rxvt xterm; do
  if command -v "$term" >/dev/null 2>&1; then
    exec "$term" "$@"
  fi
done


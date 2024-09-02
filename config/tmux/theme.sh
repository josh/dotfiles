#!/usr/bin/env bash

if [ -d /opt/homebrew/opt/tmux-tokyo-night ] && [[ $THEME == tokyonight* ]]; then
	theme_variation="${THEME#*_}"
	tmux set-option -g '@theme_variation' "$theme_variation"

	# shellcheck source=/dev/null
	source /opt/homebrew/opt/tmux-tokyo-night/share/tmux-tokyo-night/tmux-tokyo-night.tmux

elif [ -d /opt/homebrew/opt/tmux-catppuccin ] && [[ $THEME == catppuccin* ]]; then
	catppuccin_flavor="${THEME#*_}"
    tmux set-option -g '@catppuccin_flavor' "$catppuccin_flavor"

	# shellcheck source=/dev/null
    source /opt/homebrew/opt/tmux-catppuccin/share/tmux-catppuccin/catppuccin.tmux
fi

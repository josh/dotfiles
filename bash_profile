source ~/.config/bash/login

if shopt -q login_shell; then
	source ~/.config/sh/interactive
	if [ -f "$HOME/.nix-profile/etc/bashrc" ]; then
		source "$HOME/.nix-profile/etc/bashrc"
	fi
fi

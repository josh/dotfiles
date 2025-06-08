source ~/.config/sh/login

if [ -f "$HOME/.local/state/nix/profile/etc/bash_profile" ]; then
	source "$HOME/.local/state/nix/profile/etc/bash_profile"
fi

if shopt -q login_shell; then
	if [ -f "$HOME/.local/state/nix/profile/etc/bashrc" ]; then
		source "$HOME/.local/state/nix/profile/etc/bashrc"
	fi
fi

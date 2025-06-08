source ~/.config/sh/login

if [ -f "$HOME/.nix-profile/etc/bash_profile" ]; then
	source "$HOME/.nix-profile/etc/bash_profile"
fi

if shopt -q login_shell; then
	if [ -f "$HOME/.nix-profile/etc/bashrc" ]; then
		source "$HOME/.nix-profile/etc/bashrc"
	fi
fi

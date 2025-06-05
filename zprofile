source ~/.config/sh/login

if [ -f "$HOME/.nix-profile/etc/zprofile" ]; then
	source "$HOME/.nix-profile/etc/zprofile"
fi

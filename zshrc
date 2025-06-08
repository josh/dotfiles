echo "DEBUG: zshrc" >&2

if [ -f "$HOME/.local/state/nix/profiles/profile/etc/zshrc" ]; then
	source "$HOME/.local/state/nix/profiles/profile/etc/zshrc"
else
	echo "WARN: $HOME/.local/state/nix/profiles/profile/etc/zshrc not found" >&2
fi

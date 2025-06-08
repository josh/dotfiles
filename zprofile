echo "DEBUG: zprofile" >&2

# Nix
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

if [ -f "$HOME/.local/state/nix/profiles/profile/etc/zprofile" ]; then
	source "$HOME/.local/state/nix/profiles/profile/etc/zprofile"
fi

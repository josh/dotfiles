# if [ -x "$(command -v bbedit)" ]; then
# 	export EDITOR="bbedit --wait --resume"
if [ -x "$(command -v nvim)" ]; then
	export EDITOR="nvim"
else
	export EDITOR="vim"
fi
export PAGER="less -R"

# Nix
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

if [ -f "$HOME/.nix-profile/etc/zprofile" ]; then
	source "$HOME/.nix-profile/etc/zprofile"
fi

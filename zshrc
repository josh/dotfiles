echo "DEBUG: zshrc" >&2

if [ -f "$HOME/.local/state/nix/profiles/profile/etc/zshrc" ]; then
	source "$HOME/.local/state/nix/profiles/profile/etc/zshrc"
else
	echo "WARN: $HOME/.local/state/nix/profiles/profile/etc/zshrc not found" >&2
fi

HISTSIZE=50000
# shellcheck disable=SC2034
SAVEHIST=50000

setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# force emacs bindings
bindkey -e

# bash navigation
autoload -U select-word-style
select-word-style bash

alias grep='grep --color=auto'

if [ -f "$HOME/.nix-profile/etc/zshrc" ]; then
	source "$HOME/.nix-profile/etc/zshrc"
fi

if [ -d "$HOME/.nix-profile/share/zsh/site-functions" ]; then
	FPATH="$HOME/.nix-profile/share/zsh/site-functions:$FPATH"
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

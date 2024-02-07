#!/bin/zsh

set -euo pipefail
set -x

[[ $- != *i* ]]
[[ $- == *l* ]]

[[ $(echo "$PATH" | tr ':' '\n' | sort | uniq | wc -l) == $(echo "$PATH" | tr ':' '\n' | wc -l) ]]
[[ "$PATH" == "$HOME/.local/bin"* ]]
[[ "$PATH" == *"/usr/local/bin"* ]]

[[ $(type g) != "g is an alias for git" ]]

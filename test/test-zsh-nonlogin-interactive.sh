#!/bin/zsh

set -euo pipefail
set -x

[[ $- == *i* ]]
[[ $- != *l* ]]

[[ $PATH == "$HOME/.local/bin"* ]]
[[ $(type g) == "g is an alias for git" ]]

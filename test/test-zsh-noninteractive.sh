#!/bin/zsh

set -euo pipefail
set -x

[[ $- != *i* ]]
[[ $- != *l* ]]

# aliases
[[ $(type g) != "g is an alias for git" ]]

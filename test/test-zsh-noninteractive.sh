#!/bin/zsh -i

set -euo pipefail
set -x

env

[[ $- != *i* ]]
[[ $- != *l* ]]

# aliases
[[ $(type g) != "g is an alias for git" ]]

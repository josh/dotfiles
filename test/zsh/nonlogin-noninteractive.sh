#!/bin/zsh

set -euo pipefail
set -x

[[ $- != *i* ]]
[[ $- != *l* ]]

[[ $(echo "$PATH" | tr ':' '\n' | sort | uniq | wc -l) == $(echo "$PATH" | tr ':' '\n' | wc -l) ]]

[[ $(type g) != "g is an alias for git" ]]

#!/bin/zsh -l -i

set -euo pipefail
set -x

[[ $- == *i* ]]
[[ $- == *l* ]]

[[ PS1 == "$ " ]]
[[ $(type g) == "g is an alias for git" ]]

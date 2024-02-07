#!/bin/zsh

set -euo pipefail
set -x

[[ $- != *i* ]]
[[ $- == *l* ]]

[[ $(type g) != "g is an alias for git" ]]

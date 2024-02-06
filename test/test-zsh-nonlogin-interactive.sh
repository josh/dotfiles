#!/bin/zsh -i

set -euo pipefail
set -x

env

[[ $- == *i* ]]
[[ $- != *l* ]]

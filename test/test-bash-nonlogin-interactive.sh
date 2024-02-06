#!/bin/bash -i

set -euo pipefail
set -x

[[ $- == *i* ]]
! shopt -q login_shell

# aliases
[[ $(type -t g) != "alias" ]]

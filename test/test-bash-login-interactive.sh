#!/bin/bash

set -euo pipefail
set -x

[[ $- == *i* ]]
shopt -q login_shell

[[ $PATH == "$HOME/.local/bin"* ]]
[[ $(type -t g) == "alias" ]]

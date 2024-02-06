#!/bin/bash

set -euo pipefail
set -x

[[ $- == *i* ]]
if shopt -q login_shell; then
	echo "login shell"
	exit 1
fi

[[ "$PATH" == "$HOME/.local/bin"* ]]
[[ "$PATH" == *"/usr/local/bin"* ]]
[[ $(type -t g) == "alias" ]]

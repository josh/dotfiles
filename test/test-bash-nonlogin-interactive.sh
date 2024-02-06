#!/bin/bash

set -euo pipefail
set -x

[[ $- == *i* ]]
if shopt -q login_shell; then
	echo "login shell"
	exit 1
fi

# aliases
[[ $(type -t g) == "alias" ]]

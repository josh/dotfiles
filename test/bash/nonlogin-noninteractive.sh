#!/bin/bash

set -euo pipefail
set -x

[[ $- != *i* ]]
if shopt -q login_shell; then
	echo "login shell"
	exit 1
fi

[[ $(echo "$PATH" | tr ':' '\n' | sort | uniq | wc -l) == $(echo "$PATH" | tr ':' '\n' | wc -l) ]]

[[ $(type -t g) != "alias" ]]

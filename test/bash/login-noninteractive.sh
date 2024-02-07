#!/bin/bash

set -euo pipefail
set -x

[[ $- != *i* ]]
shopt -q login_shell

[[ $(echo "$PATH" | tr ':' '\n' | sort | uniq | wc -l) == $(echo "$PATH" | tr ':' '\n' | wc -l) ]]

[[ $(type -t g) != "alias" ]]

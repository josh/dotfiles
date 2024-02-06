#!/bin/bash

set -euo pipefail
set -x

[[ $- != *i* ]]
! shopt -q login_shell

[[ PS1 == "$ " ]]
[[ $(type -t g) != "alias" ]]

#!/bin/bash

set -euo pipefail
set -x

[[ $- != *i* ]]
shopt -q login_shell

[[ $(type -t g) != "alias" ]]

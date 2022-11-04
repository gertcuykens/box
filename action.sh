#!/bin/zsh
set -eu
printf '\033[33mStart a test action.\033[0m\n'
echo "$INPUT_HOST"
echo "msg=OK" >> $GITHUB_OUTPUT

# git update-index --chmod=+x action.sh
# git ls-files --stage action.sh

#!/bin/zsh
set -eu
printf '\033[33m/root/action.sh\033[0m\n'
echo "$INPUT_MSG"
echo "msg=world" >> $GITHUB_OUTPUT

# git update-index --chmod=+x action.sh
# git ls-files --stage action.sh

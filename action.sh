#!/bin/zsh
set -eu
printf '\033[33m/root/action.sh\033[0m\n'
echo "$INPUT_MSG"
echo "msg=world" >> $GITHUB_OUTPUT

# git update-index --chmod=+x action.sh
# git ls-files --stage action.sh

# ssh-keygen -t ed25519 -C "...@..."
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux

# ssh-keyscan -H 192.168.0.1 >> ~/.ssh/known_hosts
# ssh -o StrictHostKeyChecking=accept-new

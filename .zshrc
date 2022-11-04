#!/bin/zsh

branch() {
  # git rev-parse --abbrev-ref HEAD 2>/dev/null
  b="$(git symbolic-ref --short HEAD 2> /dev/null)"
  if [[ "${b}" != "" ]]; then
    echo " ${b}"
  else
    echo ""
  fi
}

setopt histignorealldups sharehistory prompt_subst
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
PROMPT='%~%F{blue}$(branch)%F{none} %# '

zmodload zsh/complist
autoload -Uz compinit && compinit

source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh-history-substring-search/zsh-history-substring-search.zsh
fpath=(~/.config/zsh-completions $fpath)

bindkey -e
bindkey ${terminfo[kcuu1]} history-substring-search-up
bindkey ${terminfo[kcud1]} history-substring-search-down

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# zstyle ':completion:*' list-prompt   ''
# zstyle ':completion:*' select-prompt ''

# git init --bare $HOME/.config/backup
# git config --local status.showUntrackedFiles no
# alias backup='/usr/bin/git --git-dir=$HOME/.config/backup --work-tree=$HOME'

# rm -f ~/.zcompdump; compinit
# undo Ctrl-U '^[[A' '^[[B'

# turn off Ctrl-S / Ctrl-Q
# stty -ixoff

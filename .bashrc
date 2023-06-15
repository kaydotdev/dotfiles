#!/bin/bash


# Bash alias

alias ll='ls -la'
alias la='ls -a'
alias rmdir='rm -rf'
alias histgrep='read -p ">>> "; history | grep -i "$REPLY" | cut -d " " -f 4-'


# Git alias

alias gnew='git init'
alias gupst='git push -u'
alias grb='git pull --rebase'
alias gstat='git status'
alias gadd='git add .'
alias gdiff='git diff --staged'
alias gcommit='git commit -m'
alias grecommit='git recommit -m'
alias grv='git remote -v'


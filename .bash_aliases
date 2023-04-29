#!/bin/bash

# Bash alias

alias ll="ls -la"
alias la="ls -a"
alias rmdir="rm -rf"
alias grephist="less .bash_history | grep"

# Python alias

alias venvnew="python -m venv venv"
alias venvrm="rm -rf venv"
alias venvon="source venv/bin/activate"
alias venvoff="deactivate"
alias python="python3"
alias pip="pip3"

# Git alias

alias gnew="git init"
alias gupst="git push -u"
alias grb="git pull --rebase"
alias gstat="git status"
alias gadd="git add ."
alias gdiff="git diff --staged"
alias glast="git diff HEAD^"
alias gcommit="git commit -m"
alias grecommit="git commit --amend -m"
alias gsview="git remote -v"
alias ghist="git hist"


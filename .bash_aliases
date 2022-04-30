# Bash alias

alias ll="ls -la"
alias la="ls -a"

# Dev tools alias

alias venvnew="python -m venv venv"
alias venvrm="rm -rf venv"
alias venvon="source venv/bin/activate"
alias venvoff="deactivate"

# Git alias

alias gnew="git init"
alias gpush="git push -u"
alias gpull="git pull --rebase"
alias gstat="git status"
alias gadd="git add ."
alias gdiff="git diff --staged"
alias glast="git diff HEAD^"
alias gcommit="git commit -m"
alias grecommit="git commit --amend -m"
alias gremote="git remote -v"
alias ghist="git hist"

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="/usr/local/go/bin:$PATH"
export PATH=$PATH:~/go/bin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias gbr="git branch | grep -v "main" | xargs git branch -D"
alias grm="git fetch upstream && git rebase upstream/main"
alias gpm="git push origin main"

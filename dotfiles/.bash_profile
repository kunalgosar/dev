export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="/usr/local/go/bin:$PATH"
export PATH=$PATH:~/go/bin

alias gbr="git branch | grep -v "main" | xargs git branch -D"
alias grm="git fetch upstream && git rebase upstream/main"
alias gpm="git push origin main"

eval "$(/opt/homebrew/bin/brew shellenv)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(goenv init -)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kunalgosar/dev/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kunalgosar/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kunalgosar/dev/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kunalgosar/dev/google-cloud-sdk/completion.bash.inc'; fi

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=/usr/local/sbin:$PATH
export PATH="/usr/local/go/bin:$PATH"
export PATH=$PATH:~/go/bin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias gbr="git branch | grep -v "main" | xargs git branch -D"
alias grm="git fetch upstream && git rebase upstream/main"
alias gpm="git push origin main"

alias aws-login="aws sso login --sso-session arcus"

config-dev() {
    original_pwd=$(pwd)
    cd ~/dev/arcus/platform-core/platform-service && export AWS_PROFILE=arcus-dev && make configure-cluster-dev
    cd "$original_pwd"
}

alias cluster-dev="config-dev && k9s -n arcus-dev"

config-prod() {
    original_pwd=$(pwd)
    cd ~/dev/arcus/platform-core/platform-service && export AWS_PROFILE=arcus-prod && make configure-cluster-prod
    cd "$original_pwd"
}
alias cluster-prod="config-prod && k9s -n arcus-prod"

if [ -f '/Users/kunalgosar/dev/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kunalgosar/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kunalgosar/dev/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kunalgosar/dev/google-cloud-sdk/completion.bash.inc'; fi

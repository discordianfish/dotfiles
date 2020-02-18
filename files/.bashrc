export GOPATH=$HOME/dev/go
export PATH="$HOME/bin:$GOPATH/bin:$PATH"

is_darwin() {
  [[ "$(uname)" -eq "Darwin" ]]
}

# Colorize coreutils
alias grep='grep --color=auto'
is_darwin || alias ls='ls --color=auto'

# Control Center
alias control-center='XDG_CURRENT_DESKTOP=Unity7 unity-control-center'

# Various
alias my-ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias sts='date +%Y-%m-%d'
alias cdd='cd $(git rev-parse --show-toplevel)'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/opt/google-cloud-sdk/path.bash.inc" ]; then source "$HOME/opt/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/opt/google-cloud-sdk/completion.bash.inc" ]; then source "$HOME/opt/google-cloud-sdk/completion.bash.inc"; fi

test -f /etc/bash_completion && . /etc/bash_completion
which kubectl > /dev/null && source <(kubectl completion bash)

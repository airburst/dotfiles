typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
export EDITOR="vim"
export PATH="$PATH:~/bin"
export PATH="$(yarn global bin):$PATH"

# Theme and plugins
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker)
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
source $ZSH/oh-my-zsh.sh

export GOOGLE_APPLICATION_CREDENTIALS=/Users/mark/.config/google-credentials.json

# Aliases
alias vps="ssh 51.38.70.195"
alias count="find . -name '*.js' | xargs wc -l | sort -nr"
alias gdab="git branch | grep -v "main" | xargs git branch -D"
alias ls='lsd'
alias k='lsd -l'
alias bi='brew install'
alias grep='rg'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pnpm
export PNPM_HOME="/Users/mark/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
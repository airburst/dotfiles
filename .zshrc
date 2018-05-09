# Path to your oh-my-zsh installation.
  export ZSH=/home/mark/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true

plugins=(
  git,
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration
alias vps="ssh 51.254.135.229"
alias vi=vim
export LD_LIBRARY_PATH="/opt/oracle/instantclient"
export OCI_HOME="/opt/oracle/instantclient"
export OCI_LIB_DIR="/opt/oracle/instantclient"
export OCI_INCLUDE_DIR="/opt/oracle/instantclient/sdk/include"

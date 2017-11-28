export TERM="xterm-256color"
# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit


source /home/aceballo/antigen.zsh

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle knife
antigen bundle svn

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply

alias config='/usr/bin/git --git-dir=/home/aceballo/.cfg/ --work-tree=/home/aceballo'
source ~/.fonts/*.sh
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/aceballo/.sdkman"
[[ -s "/home/aceballo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/aceballo/.sdkman/bin/sdkman-init.sh"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
source /home/aceballo/.dvm/dvm.sh

eval "$(pyenv virtualenv-init -)"

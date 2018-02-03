#export TERM="xterm-256color"
# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt adam1

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
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir ssh newline rbenv vcs  root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0b4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b6'

#ZLE_RPROMPT_INDENT=0

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true


POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uf017 %d.%m}"


#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\u25E2\n"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u25E5 %f "

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='cyan'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='cyan'


#POWERLEVEL9K_DIR_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_FOREGROUND="red"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"


POWERLEVEL9K_CUSTOM_NEWLINE="print '\n'"
POWERLEVEL9K_CUSTOM_NEWLINE_BACKGROUND="green"
POWERLEVEL9K_CUSTOM_NEWLINE_FOREGROUND="white"





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
#source ~/.fonts/*.sh
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

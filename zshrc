# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="bxjx"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Customize to your needs...
#   # rvm-install added line:

# Initialize colors.
autoload -U colors
colors
 
# Allow for functions in the prompt.
setopt PROMPT_SUBST
 
# Autoload zsh functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
 
# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions
 
# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'
 
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
if [[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] ; then source $HOME/.tmuxinator/scripts/tmuxinator; fi

# If I am using vi keys, I want to know what mode I'm currently using.
# zle-keymap-select is executed every time KEYMAP changes.
# From http://zshwiki.org/home/examples/zlewidgets
#function zle-keymap-select {
  #VIMODE="${${KEYMAP/vicmd/ M:command}/(main|viins)/}"
  #zle reset-prompt
#}
#zle -N zle-keymap-select

# Set the prompt.
source $ZSH/oh-my-zsh.sh

export PATH=~/local/node/bin:~/local/node/lib/node_modules:~/git/coffee-script/bin:$PATH
export node=~/local/node/bin/node
export EDITOR=vim
#eval `dircolors /home/bj/git/dircolors-solarized/dircolors.256dark`

export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward  

# Type dir name to move into it
setopt AUTO_CD

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node github brew vi-mode heroku)

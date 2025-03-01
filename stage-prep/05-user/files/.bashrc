# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '

alias ll='ls -la'

source .venv/bin/activate

######################################################################
# Initialize OpenVoiceOS CLI Environment
######################################################################
sh .bannor.sh
sh .cli_login.sh

if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases;
fi

#
# ~/.bashrc
#

# Aliases
alias ls="ls --color=auto"
alias ll="ls -alF"
alias l="ls -CF"
alias ccd="clear && cd"

# Prompt
_BROS="\e[48;2;214;67;108m"
_FROS="\e[38;2;214;67;108m"
_BORA="\e[48;2;214;80;66m"
_FORA="\e[38;2;214;80;66m"
_ESC="\e[0m"
_SS=$'\ue0b0'

PS1="\[$_ESC$_BROS\] \u@\h \[$_ESC$_FROS$_BORA\]$_SS\[$_ESC$_BORA\] \w \[$_ESC$_FORA\]$_SS\[$_ESC\] "

# Keybindings
bind '\e[Z:menu-complete'

# Exports
export EDITOR="vim"
export HISTTIMEFORMAT="[%F %T] "

# Completion
[ -s "/etc/bash_completion.d/pass-otp" ] && \. /etc/bash_completion.d/pass-otp

for f in /usr/share/bash-completion/completions/*
do
	source $f 2> /dev/null
done

# NVM
source /usr/share/nvm/init-nvm.sh

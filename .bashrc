#
# ~/.bashrc
#

# Aliases
alias ls="ls --color=auto"
alias ll="ls -alF"
alias ccd="clear && cd"
alias ssh-hosts="grep 'Host ' ~/.ssh/config | sed 's/Host //'"

function jcurl() {
	curl -s "$@" | jq
}

function crm() {
	rm -v "$@" | wc -l
}

function rcat() {
  sed -n "$2,$3p" $1
}

# Prompt
_BROS="\e[48;2;214;67;108m"
_FROS="\e[38;2;214;67;108m"
_BORA="\e[48;2;214;80;66m"
_FORA="\e[38;2;214;80;66m"
_ESC="\e[0m"
_SS=$'\ue0b0'

PS1="\[$_ESC$_BROS\] \u@\h \[$_ESC$_FROS$_BORA\]$_SS\[$_ESC$_BORA\] \w \[$_ESC$_FORA\]$_SS\[$_ESC\] "

# History
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignorespace

shopt -s histappend
export PROMPT_COMMAND="history -a"

export HISTSIZE=200
export HISTFILESIZE=500000

# Exports
export EDITOR="vim"
export LEDGER_INPUT_DATE_FORMAT="%d/%m/%Y"
export LEDGER_DATE_FORMAT="%d/%m/%Y"

# Completion
[ -s "/etc/bash_completion.d/pass-otp" ] && \. /etc/bash_completion.d/pass-otp

for f in /usr/share/bash-completion/completions/*
do
	source $f 2> /dev/null
done

# NVM
source /usr/share/nvm/init-nvm.sh

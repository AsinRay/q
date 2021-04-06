## Edited by Asin Liu
## Email: codezone@163.com


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'


# export path
#export http_proxy=http://127.0.0.1:8123
#export https_proxy=http://127.0.0.1:8123


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliased, instead of adding them here directly.
# See /usr/share/doc/bash-doc/example in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliased
fi


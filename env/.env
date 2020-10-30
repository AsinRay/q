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
alias lla='ls -Al'
alias l='ls -CF'
alias lh='ls -lh'
alias tf='tail -100f'

# same more ls aliases
alias dpa='docker ps -a'
alias di='docker images'
alias dia='docker images -a'
alias dri='docker rmi'
alias dr='docker rm'
alias d='docker '
alias dbt='docker build -t '
alias drr='docker run --rm  '
alias ssi='ssh -o ServerAliveInterval=60 -i'

alias tf='tail -100f '

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliased, instead of adding them here directly.
# See /usr/share/doc/bash-doc/example in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliased
fi

# export path
#export http_proxy=http://127.0.0.1:8123
#export https_proxy=http://127.0.0.1:8123
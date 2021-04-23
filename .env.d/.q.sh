# Edited by Asin Liu
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
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -Al'
alias l='ls -CF'
alias lh='ls -lh'

alias tf='tail -100f '

echo `date` > ~/.env.d/.env.log
# same more ls aliases

alias ssi='ssh -o ServerAliveInterval=60 -i'


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliased, instead of adding them here directly.
# See /usr/share/doc/bash-doc/example in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliased
fi

# proxy for linux system
#export http_proxy=http://127.0.0.1:8123
#export https_proxy=http://127.0.0.1:8123

alias ssu='ssi ~/.keys/ub._rsa ubuntu@t.bittx.net'

skipSh=.q.sh
envd=~/.env.d
if [ -d $envd ]; then
  # 此写法可以找出所有的文件，包括以.开头的隐藏文件    
  for i in `find .env -type f -name "*.sh" -o -name "*.path" `; do
    f=$i;
    f=${f##*/}
    if [ $f != $skipSh -a -r $i ]; then
        . $i
    else
        echo "skip file "$i
    fi
  done
  unset i



  # 此写法不能找出以.开头的隐藏文件
  for i in $envd/*.alias; do
     if [ -r $i ]; then
       . $i
     fi
  done
  unset i  

fi

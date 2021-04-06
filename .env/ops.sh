alias l='ls -CF'

# 按修改时间逆序列出文件
alias ll='ls -lht'

# 按修改时间逆序列出所有文件
alias la='ls -lhta' 

alias lh='ls -lh'
alias lla='ls -Al'

# 在根目录查找文件
alias seekr='f(){ find / -name $1; }; f' 
alias seekc='f(){ find ./ -name $1; }; f'
# 取当前时间
alias now='date "+%Y-%m-%d %H:%M:%S"'

# 取出口ip
alias oip='curl ipinfo.io/ip' 


alias ssi='ssh -o ServerAliveInterval=60 -i'
alias tf='tail -100f '

# 解压
alias untar='tar xvf '
alias unjar='jar xvf '

# 取当前正在运行的服务
alias svclst='systemctl list-unit-files --type=service | grep enabled | more'

# 在指定端口启动http服务,不传端口，默认8000, www 8080 在8080端口开启HTTP服务
alias www='f(){ python -m SimpleHTTPServer $1; }; f'

alias portopen='f(){ /sbin/iptables -I INPUT -p tcp --dport $1 -j ACCEPT; }; f'
alias portclose='f(){ /sbin/iptables -I INPUT -p tcp --dport $1 -j DROP; }; f'

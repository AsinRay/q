#! /bin/bash

if [ -e ~/.env.d ]; then
    echo ".env.d already exists. please backup it first."
    exit 0;
else
    
    # copy .env folder to $HOME
    echo "copy .env.d folder to $HOME"
    cp -r .env.d $HOME/
fi

# 
if [ ! -f ~/.bashrc ]; then
    echo "default .bashrc not found. Gen a new one."
    cp ~/.env.d/.bashrc ~/
else
    echo "default .bashrc is already exists."
fi

export src=~/.env.d/.q.sh

# grep操作的返回值：
#    如果有匹配的字符串，返回值是0， 还会打印出匹配字符串的行。
#    如果没有匹配， 会返回1。

grep -inr $src ~/.bashrc  
if [ $? -ne 0 ]; then  
        # echo "sleep 7s"  
        # sleep 7  
        # echo "game over!"

        echo "写入文件..."

cat>>~/.bashrc<<EOF
if [ -f $src ]; then
    . $src
fi
EOF

else  
        echo "config succeed, nothing to do."  
        # echo "ipconfig succeed"  
        # insmod /mnt/syslib/modules/fecdev.ko  
        # /usr/app/slm &  
        # /usr/app/softupdate slm &  
fi
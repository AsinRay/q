wget https://raw.githubusercontent.com/AsinRay/q/master/env/.env -O ~/.env

if [ ! -f ~/.bashrc ]; then
    wget https://raw.githubusercontent.com/AsinRay/q/master/env/.bashrc -O ~/.bashrc
fi

echo "写入文件"
cat>>~/.bashrc<<EOF
if [ -f ~/.env ]; then
    . ~/.env
fi
EOF



if [ ! -f ~/.profile ]; then
    wget https://raw.githubusercontent.com/AsinRay/q/master/env/.profile -O ~/.profile
    . ~/.profile
fi



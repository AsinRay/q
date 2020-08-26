#! /bin/bash
echo "写入文件"
cat>>~/.bashrc<<EOF
if [ -f ~/.env ]; then
    . ~/.env
fi
EOF
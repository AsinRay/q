# check if has folder ~/.dev
tgt=~/.dev
echo $tgt
if [ ! -d $tgt ]; then
    mkdir -p $tgt
fi

# 写入到本地
cp -r .env $tgt

# 修改.bashrc文件,加入对.q的调用
# source $tgt/.env/.q

q=$tgt/.env/.q
echo "chain .bashrc"
cat>>~/.bashrc<<EOF
if [ -f $q ]; then
    . $q
fi
EOF



flt='flutter'
wflt=`which $flt`
# install flutter dev tools
installFlutter(){
    echo 'install fltter dev tools'
    # test is the flutter is already installed.
    if [ ! -z "$wflt" ]; then
        echo "Flutter has already installed."
        exit 1
    fi  

    fltPath=$tgt/$flt
    echo $fltPath
    if [ ! -d $fltPath ]; then
        mkdir -p $fltPath 
    fi    
}

setupFlutter(){
    echo 'flutter settings is running...'
    # Chain the dev.path to .q
    path=$tgt/.env/dev.path
    cat>>$q<<EOF
    if [ -f $path ]; then
        . $path
    fi
EOF
    # modify the dev.path, set the alias for flutter. 
    cat>>$path<<EOF
    alias f='flutter'
    alias fr='flutter run'
    # For jdk9 and jdk10 
    #export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
EOF

}


# 让用户决定是否设置当前的环境为开发者环境
# 如果用户选择使用dev模式，则生成dev install 命令，使用此命令可以安装常用的开发工具
# 每安装完成一个开发工具，设置PATH到.dev文件的内容

read -p "是否安装开发工具集? [Y/n] " response

case $response in [yY][eE][sS]|[yY]|[jJ]|'') 
    echo
    echo flutter will be installed.
    #installFlutter
    echo dev tools installed.
    setupFlutter
    echo flutter settings ok
    ;;
    *)
    echo
    echo canceled
    echo
    ;;
esac
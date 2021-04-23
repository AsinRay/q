skipSh=.q.sh
envd=~/.env
if [ -d $envd ]; then
  # 此写法可以找出所有的文件，包括以.开头的隐藏文件  
  for i in `find ~/.env.d -type f -name "*.sh" -o -name "*.path" `; do
   
    f=$i;
    f=${f##*/}
    if [ $f != $skipSh -a -r $i ]; then
        echo $f
        echo $i
        echo "-------------"
    else
        echo "skip file "$i
    fi
  done
  unset i


  # 此写法不能找出以.开头的隐藏文件
  for i in $envd/*.alias; do
     if [ -r $i ]; then
       echo $i
     fi
  done
  unset i  

fi
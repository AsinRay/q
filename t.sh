#!/bin/bash

## 2021-04-25 12:18

notAnswer=true
while $notAnswer
do
	read -r -p "Are You Sure? [Y/n] " input

	case $input in
	    [yY][eE][sS]|[yY])
			echo "Yes"
			notAnswer=false
			;;

	    [nN][oO]|[nN])
			echo "No"
			notAnswer=false	       	
			;;

	    *)
			echo "Invalid input..."
			;;
	esac
done


read -r -p "请确认应用是否安装在/opt/目录下? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
		echo "Yes"
		;;

    [nN][oO]|[nN])
		echo "No"
       	;;

    *)
		echo "Invalid input..."
		exit 1
		;;
esac


command='java'
if ! type "$command" > /dev/null; then
    # install foobar here
    echo not install
else
    echo "installed."
fi

# if ! cmd_loc="$(type -p "$command")" || [[ -z $cmd_loc ]]; then
if ! cmd_loc="$(type -p "$command")" ; then
  # install foobar here
    echo "haha"
else
    echo "install?"
fi
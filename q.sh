# check if has folder ~/.dev
tgt=~/.dex
echo $tgt
if [ ! -d $tgt ]; then
    mkdir -p $tgt
fi


if [ ! -f $tgt/.q ]; then
    echo "parsing .env ..."
    wget https://raw.githubusercontent.com/AsinRay/q/master/.env/.q -O $tgt/.q
fi




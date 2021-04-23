# check if has folder ~/.dev
tgt=~/.dev
echo $tgt
if [ ! -d $tgt ]; then
    mkdir -p $tgt
fi


if [ ! -f $tgt/.q ]; then
    echo "parsing .env ..."
    wget https://raw.githubusercontent.com/AsinRay/q/master/.env/.q -O $tgt/.q
fi

if [ ! -f $tgt/.dev ]; then
    echo "parsing .env ..."
    wget https://raw.githubusercontent.com/AsinRay/q/master/.env/.q -O $tgt/.dev
fi

if [ ! -f $tgt/.deploy ]; then
    echo "parsing .env ..."
    wget https://raw.githubusercontent.com/AsinRay/q/master/.env/.q -O $tgt/.deploy
fi


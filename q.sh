# check if has folder ~/.dev
tgt=/tmp/.q.tmp
zip=q.zip

echo $tgt
if [ ! -d $tgt ]; then
    mkdir -p $tgt
fi

file=$tgt/$zip


if [ ! -f file ]; then
    echo "download q.zip ..."
    curl -o $file https://codeload.github.com/AsinRay/q/zip/refs/heads/master
fi

unzip -o $file -d $tgt

sh $tgt/q-master/installNative.sh

rm -rf $tgt
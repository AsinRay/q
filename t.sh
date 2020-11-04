
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

#! /bin/bash

if [ -e ~/.env.d ]; then
    echo ".env.d already exists. remove now..."
    rm -rf ~/.env.d
else
    
    # copy .env folder to $HOME
    echo "folder ~/.env.d not found."
fi

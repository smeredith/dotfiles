#!/bin/bash
shopt -s nullglob
shopt -s dotglob

# install the default files first
FILES=$PWD/default/*
for f in $FILES
do
    echo "Processing $f"
    rm $HOME/$(basename "$f")
    ln -sf $f $HOME/$(basename "$f")
done

# if there is a custom version for this host, replace the default
FILES=$PWD/hosts/$HOSTNAME/*
for f in $FILES
do
    echo "Processing $f"
    rm $HOME/$(basename "$f")
    ln -sf $f $HOME/$(basename "$f")
done

#!/bin/bash
for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    filepath=$(cd $(dirname $0) && pwd)/"$f"
    ln -svf $filepath "$HOME"/"$f"
done

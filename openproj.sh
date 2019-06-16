#!/bin/bash

function openproj(){
    pathalias=$1
    arg=$2
    path=$(python3 $HOME/bin/projects.py $pathalias)
    vimFileList="files.txt"

    if [ "$path" = "none" ]; then
        echo "Error: Project alias: $pathalias not found. Make sure alias is in projects.py"
    else
        cd "$path"
    fi

    for arg in "$@"
    do
        if [ "$arg" == "-u" ]; then
            svn update
            svn merge ^/trunk
            svn commit -m "Merging trunk into branch"
        elif [ "$arg" == "-v" ]; then
            if [ -f "$vimFileList" ]; then
                vim -R -p `cat $vimFileList`
            else
                echo "Error: $vimFileList required to open vim file list"
            fi
        fi
    done

}




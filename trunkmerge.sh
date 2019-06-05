#!/bin/bash

function trunkmerge(){
    branchName=$1
    outFile="output.txt"
    url="^/branches/feature/$branchName"
    
    openproj trunk
    svn revert -R .
    svn update
    #svn merge "$url"
    cd ..
    #svn diff "trunk/" "^/trunk" > "$outFile"
    cd "trunk/"
    if [ -d "build-local-release" ]; then
        cd "build-local-release"
    else
        echo "Build directory not found. Creating new one."
        mkdir "build-local-release"
        cd "build-local-release/"
        ../configure-local-release
    fi
    #make -j3
    #./sbctest > "$outFile"

    if [ -f "$outfile" ]; then
        vim "$outFile"
    fi




    
}

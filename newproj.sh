#!/bin/bash

function newproj(){

    branchName=$1
    fullpath="/home/smontoya-curtin/Project/mybranches/"
    trunkURL="http://vm001.kgisystems.com/synkboxclient/synkboxclient/trunk"
    branchURL="http://vm001.kgisystems.com/synkboxclient/synkboxclient/branches/feature/$branchName"

    echo "Are you sure you want to create a new project? y,n"
    read ans1
    if [ "$ans1" != "y" && "$ans1" != "yes" ]; then
        return 1
    fi

    if [ "$branchName" == "" ]; then
        echo "Error: Missing branch name argument"
        return 1
    else
        cd "$fullpath"
        echo $branchURL
        echo "test cp $trunkURL $branchURL"
        #svn cp "$trunkURL" "$branchURL" 
        #svn co "$branchURL"
        #cd "$fullpath$branchName"
        #ctags -R
        #mkdir "build-local-release"
        #vim "CMakeLists.txt"
        #cd "build-local-release"
        #../configure-local-release
        #cp "compile_commands.json" "$fullpath$branchName"
        #cd ..
    fi
}

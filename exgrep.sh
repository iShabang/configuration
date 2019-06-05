#!/bin/bash

function exgrep()
{
    searchstring=$1

    grep -r -C5 "$searchstring" egm/ include/ src/ test/ > output.txt
}

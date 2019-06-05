#!/bin/bash

function grabxml(){
    filename=$1
    destination=$2
    scp "root@10.0.12.89:/emsnamb/namb2/xml/$filename $destination"
}

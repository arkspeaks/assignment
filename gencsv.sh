#!/usr/bin/env bash

_OutFile=inputFile

function gen_random_numbers(){
    local num_lines=10
    

    for (( i=0; i<=num_lines; i++ ))
    do
        echo "$i, ${RANDOM:2:7}" 
    done
}

gen_random_numbers | tee $_OutFile

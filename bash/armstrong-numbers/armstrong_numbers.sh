#!/usr/bin/env bash

   main () {
    for (( i=0 ; i < ${#1} ; i++ ))
    do 
        digits[i]=${1:i:1}
    done
    
    length=${#digits[@]}

    for d in "${digits[@]}"; do 
        n=$(( n + (d ** length) ))
    done

    if [ "$1" == "$n" ]; then 
        echo "true"
    else 
        echo "false"
    fi
   }

   # call main with all of the positional arguments
   main "$@"

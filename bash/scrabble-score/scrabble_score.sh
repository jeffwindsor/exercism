#!/usr/bin/env bash

main () {
 for (( i=0 ; i < ${#1} ; i++ )); do
     letters[i]=${1:i:1}
 done

 for letter in "${letters[@]}"; do
     case $letter in
          "A" | "E" | "I" | "O" | "U" | "L" | "N" | "R" | "S" | "T" | "a" | "e" | "i" | "o" | "u" | "l" | "n" | "r" | "s" | "t") tile=1;;
          "D" | "G" | "d" | "g") tile=2;;
          "B" | "C" | "M" | "P" | "b" | "c" | "m" | "p") tile=3;;
          "F" | "H" | "V" | "W" | "Y" | "f" | "h" | "v" | "w" | "y") tile=4;;
          "K" | "k") tile=5;;
          "J" | "X" | "j" | "x") tile=8;;
          "Q" | "Z" | "q" | "z") tile=10;;
     esac
     score=$(( score + tile))
 done

 echo $score
}

# call main with all of the positional arguments
main "$@"


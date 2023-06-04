#!/bin/bash
# Пункт 3.4 шаг 9

gcd ()
{
    if [[ $1 == $2 ]]; then
        echo "GCD is $1"
        return 
    elif [[ $1 -gt $2 ]]; then
        let "m=$1-$2"
        gcd $m $2
        return
    else
        let "n=$2-$1"
        gcd $1 $n
        return
    fi
}


while [ True ]; do
    read a b
    if [[ -z $a || -z $b ]]; then
        echo "bye"
        exit
    else
        gcd $a $b
    fi
done
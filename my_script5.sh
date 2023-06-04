#!/bin/bash

group1=child
group2=youth
group3=adult

while [ True ]
do
    echo "enter your name:"
    read name
    if [[ -z $name ]]
    then
        echo "bye"
        break
    fi

    echo "enter your age:"
    read age
    if [[ -z $age || $age -eq 0 ]]
    then
        echo "bye"
        break
    elif [[ $age -le 16 ]]
    then
        echo "$name, your group is $group1"
    elif [[ $age -ge 17 && $age -le 25 ]]
    then
        echo "$name, your group is $group2"
    else
        echo "$name, your group is $group3"
    fi
done
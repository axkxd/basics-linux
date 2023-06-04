#!/bin/bash

againe=yes
while [ "$againe" = "yes" ]
do
    echo "Please entre a name:"
    read name
    echo "The name you entered is $name"

    echo "Do you wish to continue? (yes/no)"
    read againe
done
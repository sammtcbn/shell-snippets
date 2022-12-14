#!/bin/bash

function random_0_to_9()
{
#    echo $(( $RANDOM % 10 ))
    echo $(shuf -i 0-9 -n 1)
}

function random_1_to_10()
{
#    echo $(( ( RANDOM % 10 )  + 1 ))
    echo $(shuf -i 1-10 -n 1)
}

function random_1_to_100()
{
#    echo $(( ( RANDOM % 99 )  + 1 ))
    echo $(shuf -i 1-100 -n 1)
}

temperature=$(random_1_to_100)
humidity=$(random_1_to_10)

echo temperature is ${temperature}
echo humidity is ${humidity}

#!/bin/bash

function random_0_to_9()
{
    echo $(( $RANDOM % 10 ))
}

function random_1_to_10()
{
    echo $(( ( RANDOM % 10 )  + 1 ))
}

function random_1_to_100()
{
    echo $(( ( RANDOM % 99 )  + 1 ))
}

temperature=$(random_1_to_100)
humidity=$(random_1_to_10)

echo temperature is ${temperature}
echo humidity is ${humidity}

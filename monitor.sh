#!/bin/bash

while_loop()
{
        while [[ -e ~/file.txt ]]
        do
                echo "~/file.txt exists"
                sleep 2
                until_loop
        done
}

until_loop()
{
        until [[ -e ~/file.txt ]]
        do
                echo "~/file.txt doesn't exist"
                sleep 2
                while_loop
        done
}


if [[ -e ~/file.txt ]]
then
        while_loop
else
        until_loop
fi
